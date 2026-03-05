import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_gcp/pulumi_gcp.dart' as gcp;
import 'package:pulumi_pulumiservice/pulumi_pulumiservice.dart' as pcloud;
import 'package:pulumi_random/pulumi_random.dart' as random;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final config = pulumi.Config();
    final gcpConfig = pulumi.Config('gcp');

    final gcpProjectName = gcpConfig.require('project');
    final escEnvOrg =
        config.get('escEnvOrg') ?? pulumi.Deployment.instance.organizationName;
    final escEnvProject = config.get('escEnvProject') ?? 'gcloud';
    final escEnvName = config.get('escEnvName') ?? '$gcpProjectName-admin';
    final issuer = config.get('issuer') ?? 'https://api.pulumi.com/oidc';

    // These IDs are intentionally short because the GCP quotas are strict.
    final workloadIdentityPoolId = '$escEnvOrg-admin';
    final serviceAccountId = workloadIdentityPoolId.replaceAll('-', '');

    final randomSuffix = random.index.RandomString(
      'random-suffix',
      args: random.index.RandomStringArgs(
        length: 5.output(),
        lower: true.output(),
        upper: false.output(),
        special: false.output(),
      ),
    );

    final identityPool = gcp.iam.WorkloadIdentityPool(
      'identity-pool',
      args: gcp.iam.WorkloadIdentityPoolArgs(
        workloadIdentityPoolId: randomSuffix.result.apply(
          (suffix) => '$workloadIdentityPoolId-$suffix',
        ),
      ),
    );

    final oidcProvider = gcp.iam.WorkloadIdentityPoolProvider(
      'identity-pool-provider',
      args: gcp.iam.WorkloadIdentityPoolProviderArgs(
        workloadIdentityPoolId: identityPool.workloadIdentityPoolId,
        workloadIdentityPoolProviderId: 'pulumi-cloud-$escEnvOrg-oidc'.output(),
        oidc: gcp.iam
            .WorkloadIdentityPoolProviderOidc(
              issuerUri: issuer.output(),
              allowedAudiences: ['gcp:$escEnvOrg'].output(),
            )
            .output(),
        attributeMapping: const {'google.subject': 'assertion.sub'}.output(),
      ),
    );

    gcp.projects.Service(
      'enableIamCredentialsApi',
      args: gcp.projects.ServiceArgs(
        service: 'iamcredentials.googleapis.com'.output(),
        project: gcpProjectName.output(),
      ),
      options: pulumi.CustomResourceOptions(retainOnDelete: true),
    );

    final serviceAccount = gcp.serviceaccount.Account(
      'service-account',
      args: gcp.serviceaccount.AccountArgs(
        accountId: serviceAccountId.output(),
        project: gcpProjectName.output(),
      ),
    );

    gcp.projects.IAMMember(
      'service-account-role',
      args: gcp.projects.IAMMemberArgs(
        member: serviceAccount.email.apply((email) => 'serviceAccount:$email'),
        role: 'roles/admin'.output(),
        project: gcpProjectName.output(),
      ),
    );

    gcp.serviceaccount.IAMBinding(
      'service-account-binding',
      args: gcp.serviceaccount.IAMBindingArgs(
        serviceAccountId: serviceAccount.id,
        role: 'roles/iam.workloadIdentityUser'.output(),
        members: identityPool.name.apply(
          (name) => ['principalSet://iam.googleapis.com/$name/*'],
        ),
      ),
    );

    // `gcp-login` expects a project number rather than a project name.
    final projectNumber = pulumi.Output.create('').apply<int>((_) async {
      final project = await gcp.organizations.getProject(
        gcp.organizations.GetProjectArgs(projectId: gcpProjectName.output()),
      );
      return int.parse(project.number);
    });

    final envYaml =
        pulumi.Output.all([
          projectNumber,
          identityPool.workloadIdentityPoolId,
          oidcProvider.workloadIdentityPoolProviderId,
          serviceAccount.email,
        ]).apply<String>((values) {
          final projectNumberValue = values[0] as int;
          final workloadPoolId = values[1] as String;
          final providerId = values[2] as String;
          final serviceAccountEmail = values[3] as String;

          return '''values:
  gcp:
    login:
      fn::open::gcp-login:
        project: $projectNumberValue
        oidc:
          workloadPoolId: $workloadPoolId
          providerId: $providerId
          serviceAccount: $serviceAccountEmail
          subjectAttributes:
            - currentEnvironment.name
  pulumiConfig:
    gcp:project: \${gcp.login.project}
  environmentVariables:
    # The Google Cloud SDK (which is used by the Pulumi provider) requires the project to be set by number:
    GOOGLE_CLOUD_PROJECT: \${gcp.login.project}
    # The gcloud CLI requires the project be set by name, and via a different env var.
    # See: https://cloud.google.com/sdk/docs/properties#setting_properties_using_environment_variables
    CLOUDSDK_CORE_PROJECT: $gcpProjectName
    GOOGLE_OAUTH_ACCESS_TOKEN: \${gcp.login.accessToken}
    CLOUDSDK_AUTH_ACCESS_TOKEN: \${gcp.login.accessToken}
    USE_GKE_GCLOUD_AUTH_PLUGIN: True
''';
        });

    final environment = pcloud.index.Environment(
      'environment',
      args: pcloud.index.EnvironmentArgs(
        organization: escEnvOrg.output(),
        project: escEnvProject.output(),
        name: escEnvName.output(),
        yaml: envYaml,
      ),
    );

    registerOutputs({'escEnvId': environment.id});
  }
}
