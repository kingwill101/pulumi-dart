import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_pulumiservice/pulumi_pulumiservice.dart'
    as pulumiservice;
import 'package:pulumi_tls/pulumi_tls.dart' as tls;

class OidcProviderPulumiCloudStack extends pulumi.Stack {
  late final pulumi.Output<String> escEnvironment;

  OidcProviderPulumiCloudStack() {
    final config = pulumi.Config();
    final escProject = config.require('escProject');
    final escEnvName = config.require('escEnvironmentName');
    final pulumiOrg = config.require('pulumiOrganization');

    final oidcAudience = escProject == 'default' ? pulumiOrg : 'aws:$pulumiOrg';
    const oidcIdpUrl = 'https://api.pulumi.com/oidc';

    final thumbprints = pulumi
        .output(
          tls.index.getCertificate(
            tls.index.GetCertificateArgs(url: oidcIdpUrl.input()),
          ),
        )
        .apply<List<String>>(
          (certs) => [certs.certificates.first.sha1Fingerprint],
        );

    final provider = aws.iam.OpenIdConnectProvider(
      'oidcProvider',
      args: aws.iam.OpenIdConnectProviderArgs(
        clientIdLists: [oidcAudience].input(),
        url: oidcIdpUrl.input(),
        thumbprintLists: thumbprints.input(),
      ),
    );

    final policyDocumentJson = provider.arn.apply<String>((arn) async {
      final doc = await aws.iam.getPolicyDocument(
        aws.iam.GetPolicyDocumentArgs(
          version: '2012-10-17'.input(),
          statements: [
            aws.iam.GetPolicyDocumentStatement(
              effect: 'Allow'.input(),
              actions: ['sts:AssumeRoleWithWebIdentity'].input(),
              principals: [
                aws.iam.GetPolicyDocumentStatementPrincipal(
                  type: 'Federated'.input(),
                  identifiers: [arn].input(),
                ),
              ].input(),
              conditions: [
                aws.iam.GetPolicyDocumentStatementCondition(
                  test: 'StringEquals'.input(),
                  variable: 'api.pulumi.com/oidc:aud'.input(),
                  values: [oidcAudience].input(),
                ),
              ].input(),
            ),
          ].input(),
        ),
      );
      return doc.json;
    });

    final role = aws.iam.Role(
      'pulumi-cloud-admin',
      args: aws.iam.RoleArgs(assumeRolePolicy: policyDocumentJson),
    );

    aws.iam.RolePolicyAttachment(
      'policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        policyArn: 'arn:aws:iam::aws:policy/AdministratorAccess'.input(),
        role: role.name,
      ),
    );

    final envYaml = role.arn.apply<String>((roleArn) {
      return '''
values:
  aws:
    login:
      fn::open::aws-login:
        oidc:
          duration: 1h
          roleArn: $roleArn
          sessionName: pulumi-esc
  environmentVariables:
    AWS_ACCESS_KEY_ID: \${aws.login.accessKeyId}
    AWS_SECRET_ACCESS_KEY: \${aws.login.secretAccessKey}
    AWS_SESSION_TOKEN: \${aws.login.sessionToken}
''';
    });

    pulumiservice.index.Environment(
      'aws-esc-oidc-env',
      args: pulumiservice.index.EnvironmentArgs(
        organization: pulumiOrg.input(),
        project: escProject.input(),
        name: escEnvName.input(),
        yaml: envYaml.input(),
      ),
    );

    escEnvironment = '$escProject/$escEnvName'.output();
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('escEnvironment', escEnvironment)];
  }
}
