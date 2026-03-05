import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/applicationinsights.dart'
    as applicationinsights;
import 'package:pulumi_azure_native/eventgrid.dart' as eventgrid;
import 'package:pulumi_azure_native/keyvault.dart' as keyvault;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/sql.dart' as sql;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;
import 'package:pulumi_random/pulumi_random.dart' as random;

class AzureNativeCredentialRotationOneSetStack extends pulumi.Stack {
  AzureNativeCredentialRotationOneSetStack() : super() {
    final config = pulumi.Config();

    final sqlAdminLogin = config.get('sqlAdminLogin') ?? 'sqlAdmin';
    final secretName = config.get('secretName') ?? 'sqlPassword';
    final functionAppRepoUrl =
        config.get('functionAppRepoURL') ??
        'https://github.com/Azure-Samples/KeyVault-Rotation-SQLPassword-Csharp.git';
    final webAppRepoUrl =
        config.get('webAppRepoURL') ??
        'https://github.com/Azure-Samples/KeyVault-Rotation-SQLPassword-Csharp-WebApp.git';

    final resourceGroup = resources.ResourceGroup('rotatesecretoneset-rg');

    final sqlAdminPassword = random.index.RandomUuid('sql-password').result;

    final sqlServer = sql.Server(
      'sqlServer',
      args: sql.ServerArgs(
        administratorLogin: sqlAdminLogin.output(),
        administratorLoginPassword: sqlAdminPassword,
        resourceGroupName: resourceGroup.name,
        version: '12.0'.output(),
      ),
    );

    sql.FirewallRule(
      'AllowAllWindowsAzureIps',
      args: sql.FirewallRuleArgs(
        serverName: sqlServer.name,
        resourceGroupName: resourceGroup.name,
        startIpAddress: '0.0.0.0'.output(),
        endIpAddress: '0.0.0.0'.output(),
      ),
    );

    final storageAccount = storage.StorageAccount(
      'storageaccount',
      args: storage.StorageAccountArgs(
        kind: storage.Kind.valueStorage.wireValue.output(),
        resourceGroupName: resourceGroup.name,
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
      ),
    );

    final appInsights = applicationinsights.Component(
      'appInsights',
      args: applicationinsights.ComponentArgs(
        requestSource: 'IbizaWebAppExtensionCreate'.output(),
        resourceGroupName: resourceGroup.name,
        applicationType: 'web'.output(),
        kind: 'web'.output(),
      ),
    );

    final functionAppServicePlan = web.AppServicePlan(
      'functionApp-appService',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        sku: web.SkuDescription(
          name: 'Y1'.output(),
          tier: 'Dynamic'.output(),
        ).output(),
      ),
    );

    final storageKey =
        pulumi.Output.tuple(storageAccount.name, resourceGroup.name).apply((
          pair,
        ) async {
          final keys = await storage.listStorageAccountKeys(
            storage.ListStorageAccountKeysArgs(
              accountName: pair.$1.output(),
              resourceGroupName: pair.$2.output(),
            ),
          );
          return keys.keys.first.value;
        });

    final azureWebJobsStorage =
        pulumi.Output.tuple(storageAccount.name, storageKey).apply<String>(
          (pair) =>
              'DefaultEndpointsProtocol=https;AccountName=${pair.$1};AccountKey=${pair.$2}',
        );

    final websiteContentStorage =
        pulumi.Output.tuple(storageAccount.name, storageKey).apply<String>(
          (pair) =>
              'DefaultEndpointsProtocol=https;AccountName=${pair.$1};EndpointSuffix=core.windows.net;AccountKey=${pair.$2}',
        );

    final functionApp = web.WebApp(
      'functionApp',
      args: web.WebAppArgs(
        kind: 'functionapp'.output(),
        resourceGroupName: resourceGroup.name,
        serverFarmId: functionAppServicePlan.id,
        identity: web.ManagedServiceIdentity(
          type: web.ManagedServiceIdentityType.valueSystemAssigned.output(),
        ).output(),
        siteConfig: web.SiteConfig(
          appSettings: <web.NameValuePair>[
            web.NameValuePair(
              name: 'AzureWebJobsStorage'.output(),
              value: azureWebJobsStorage,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'dotnet'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_CONTENTAZUREFILECONNECTIONSTRING'.output(),
              value: websiteContentStorage,
            ),
            web.NameValuePair(
              name: 'WEBSITE_NODE_DEFAULT_VERSION'.output(),
              value: '~10'.output(),
            ),
            web.NameValuePair(
              name: 'APPINSIGHTS_INSTRUMENTATIONKEY'.output(),
              value: appInsights.instrumentationKey,
            ),
          ].output(),
        ).output(),
      ),
    );

    final functionAppSourceControl = web.WebAppSourceControl(
      'functionApp-sourceControl',
      args: web.WebAppSourceControlArgs(
        name: functionApp.name,
        isManualIntegration: true.output(),
        branch: 'main'.output(),
        repoUrl: functionAppRepoUrl.output(),
        resourceGroupName: resourceGroup.name,
      ),
    );

    final webAppServicePlan = web.AppServicePlan(
      'webApp-appService',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        sku: web.SkuDescription(name: 'F1'.output()).output(),
      ),
    );

    final webApp = web.WebApp(
      'webApp',
      args: web.WebAppArgs(
        kind: 'app'.output(),
        resourceGroupName: resourceGroup.name,
        serverFarmId: webAppServicePlan.id,
        identity: web.ManagedServiceIdentity(
          type: web.ManagedServiceIdentityType.valueSystemAssigned.output(),
        ).output(),
      ),
    );

    final tenantId = functionApp.identity.apply<String>((identity) {
      final value = identity?.tenantId;
      if (value == null) {
        throw StateError('Function App identity tenantId was null');
      }
      return value;
    });
    final functionPrincipalId = functionApp.identity.apply<String>((identity) {
      final value = identity?.principalId;
      if (value == null) {
        throw StateError('Function App identity principalId was null');
      }
      return value;
    });
    final webAppPrincipalId = webApp.identity.apply<String>((identity) {
      final value = identity?.principalId;
      if (value == null) {
        throw StateError('Web App identity principalId was null');
      }
      return value;
    });

    final keyVault = keyvault.Vault(
      'keyVault',
      args: keyvault.VaultArgs(
        properties: keyvault.VaultProperties(
          accessPolicies: <keyvault.AccessPolicyEntry>[
            keyvault.AccessPolicyEntry(
              tenantId: tenantId,
              objectId: functionPrincipalId,
              permissions: keyvault.Permissions(
                secrets: <String>['get', 'list', 'set'].output(),
              ).output(),
            ),
            keyvault.AccessPolicyEntry(
              tenantId: tenantId,
              objectId: webAppPrincipalId,
              permissions: keyvault.Permissions(
                secrets: <String>['get', 'list', 'set'].output(),
              ).output(),
            ),
          ].output(),
          enabledForDeployment: false.output(),
          enabledForDiskEncryption: false.output(),
          enabledForTemplateDeployment: false.output(),
          sku: keyvault.Sku(
            family: 'A'.output(),
            name: keyvault.SkuName.valueStandard.output(),
          ).output(),
          tenantId: tenantId,
          enableSoftDelete: false.output(),
        ).output(),
        resourceGroupName: resourceGroup.name,
      ),
    );

    final topic = eventgrid.SystemTopic(
      'SecretExpiry',
      args: eventgrid.SystemTopicArgs(
        source: keyVault.id,
        topicType: 'microsoft.keyvault.vaults'.output(),
        resourceGroupName: resourceGroup.name,
      ),
    );

    final eventSubscription = eventgrid.SystemTopicEventSubscription(
      'eventSubscription',
      args: eventgrid.SystemTopicEventSubscriptionArgs(
        systemTopicName: topic.name,
        resourceGroupName: resourceGroup.name,
        filter: eventgrid.EventSubscriptionFilter(
          subjectBeginsWith: secretName.output(),
          subjectEndsWith: secretName.output(),
          includedEventTypes: <String>[
            'Microsoft.KeyVault.SecretNearExpiry',
          ].output(),
        ).output(),
        destination: eventgrid.AzureFunctionEventSubscriptionDestination(
          resourceId: functionApp.id.apply<String>(
            (id) => '$id/functions/AKVSQLRotation',
          ),
          endpointType: 'AzureFunction'.output(),
          maxEventsPerBatch: 1.output(),
          preferredBatchSizeInKilobytes: 64.output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [functionAppSourceControl],
      ),
    );

    final expiresAt =
        DateTime.now()
            .toUtc()
            .add(const Duration(minutes: 1))
            .millisecondsSinceEpoch ~/
        1000;

    final secretTags = sqlServer.id.apply<Map<String, String>>(
      (sqlServerId) => <String, String>{
        'CredentialId': sqlAdminLogin,
        'ProviderAddress': sqlServerId,
        'ValidityPeriodDays': '1',
      },
    );

    keyvault.Secret(
      'secret',
      args: keyvault.SecretArgs(
        secretName: secretName.output(),
        vaultName: keyVault.name,
        resourceGroupName: resourceGroup.name,
        tags: secretTags,
        properties: keyvault.SecretProperties(
          value: sqlAdminPassword,
          attributes: keyvault.SecretAttributes(
            expires: expiresAt.output(),
          ).output(),
        ).output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [eventSubscription]),
    );

    final webAppSettings = pulumi.Output.tuple(sqlServer.name, keyVault.name)
        .apply<Map<String, String>>(
          (pair) => <String, String>{
            'DataSource': '${pair.$1}.database.windows.net',
            'KeyVaultName': pair.$2,
            'SecretName': secretName,
          },
        );

    web.WebAppApplicationSettings(
      'webApp-appSettings',
      args: web.WebAppApplicationSettingsArgs(
        name: webApp.name,
        resourceGroupName: resourceGroup.name,
        properties: webAppSettings,
      ),
    );

    web.WebAppSourceControl(
      'webApp-sourceControl',
      args: web.WebAppSourceControlArgs(
        name: webApp.name,
        isManualIntegration: true.output(),
        branch: 'main'.output(),
        repoUrl: webAppRepoUrl.output(),
        resourceGroupName: resourceGroup.name,
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'webAppEndpoint': webApp.defaultHostName,
    });
  }
}
