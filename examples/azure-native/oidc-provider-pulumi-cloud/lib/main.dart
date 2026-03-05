import 'dart:math';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azuread/index.dart' as azuread;
import 'package:pulumi_pulumiservice/index.dart' as pulumiservice;

class AzureNativeOidcProviderPulumiCloudStack extends pulumi.Stack {
  AzureNativeOidcProviderPulumiCloudStack() : super() {
    final randomNumber = Random.secure().nextInt(9000) + 1000;

    final config = pulumi.Config();
    final issuer = config.get('issuer') ?? 'https://api.pulumi.com/oidc';
    final orgName = pulumi.Deployment.instance.organizationName;
    final audience = 'azure:$orgName';
    final projectName = config.require('projectName');
    final envName = config.require('environmentName');

    final azureConfig = pulumi.output(authorization.getClientConfig());
    final azSubscription = azureConfig.apply((c) => c.subscriptionId);
    final tenantId = azureConfig.apply((c) => c.tenantId);

    final application = azuread.Application(
      'pulumi-oidc-app-reg-$randomNumber',
      args: azuread.ApplicationArgs(
        displayName: 'pulumi-environments-oidc-app'.output(),
        signInAudience: 'AzureADMyOrg'.output(),
      ),
    );

    final subject = 'pulumi:environments:org:$orgName:env:$projectName/$envName'
        .output();

    azuread.ApplicationFederatedIdentityCredential(
      'federatedIdentityCredential',
      args: azuread.ApplicationFederatedIdentityCredentialArgs(
        applicationId: application.objectId.apply((id) => '/applications/$id'),
        displayName: 'pulumi-env-oidc-fic-$randomNumber'.output(),
        description: 'Federated credentials for Pulumi ESC'.output(),
        audiences: [audience].output(),
        issuer: issuer.output(),
        subject: subject,
      ),
    );

    azuread.ApplicationFederatedIdentityCredential(
      'federatedIdentityCredentialIac',
      args: azuread.ApplicationFederatedIdentityCredentialArgs(
        applicationId: application.objectId.apply((id) => '/applications/$id'),
        displayName: 'pulumi-env-oidc-fic-${randomNumber}-2'.output(),
        description: 'Federated credentials for Pulumi ESC'.output(),
        audiences: [audience].output(),
        issuer: issuer.output(),
        subject: 'pulumi:environments:org:$orgName:env:<yaml>'.output(),
      ),
    );

    final servicePrincipal = azuread.ServicePrincipal(
      'myserviceprincipal',
      args: azuread.ServicePrincipalArgs(clientId: application.clientId),
    );

    final contributorRoleId = azSubscription.apply<String>(
      (s) =>
          '/subscriptions/$s/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c',
    );

    authorization.RoleAssignment(
      'myroleassignment',
      args: authorization.RoleAssignmentArgs(
        roleDefinitionId: contributorRoleId,
        principalId: servicePrincipal.objectId,
        principalType: authorization
            .PrincipalType
            .valueServicePrincipal
            .wireValue
            .output(),
        scope: azSubscription.apply((s) => '/subscriptions/$s'),
      ),
    );

    final envYaml =
        pulumi.Output.tuple3(
          application.clientId,
          tenantId,
          azSubscription,
        ).apply((args) {
          final clientId = args.$1;
          final tenant = args.$2;
          final subscription = args.$3;
          return '''
values:
  azure:
    login:
      fn::open::azure-login:
        clientId: $clientId
        tenantId: $tenant
        subscriptionId: $subscription
        oidc: true
  environmentVariables:
    ARM_USE_OIDC: 'true'
    ARM_CLIENT_ID: \${azure.login.clientId}
    ARM_TENANT_ID: \${azure.login.tenantId}
    ARM_OIDC_TOKEN: \${azure.login.oidc.token}
    ARM_SUBSCRIPTION_ID: \${azure.login.subscriptionId}
''';
        });

    pulumiservice.Environment(
      'aws-esc-oidc-env',
      args: pulumiservice.EnvironmentArgs(
        organization: orgName.output(),
        project: projectName.output(),
        name: envName.output(),
        yaml: envYaml.apply((yaml) => pulumi.StringAsset(yaml)),
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'escEnvironment': '$projectName/$envName'.output(),
    });
  }
}
