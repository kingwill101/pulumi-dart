import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/applicationinsights.dart'
    as applicationinsights;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/sql.dart' as sql;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;

pulumi.Output<String> getSASToken(
  pulumi.Input<String> storageAccountName,
  pulumi.Input<String> storageContainerName,
  pulumi.Input<String> blobName,
  pulumi.Input<String> resourceGroupName,
) {
  final resolved = pulumi.Output.tuple4(
    storageAccountName.output(),
    storageContainerName.output(),
    blobName.output(),
    resourceGroupName.output(),
  );

  return resolved.apply((values) async {
    final account = values.$1;
    final container = values.$2;
    final blob = values.$3;
    final resourceGroup = values.$4;

    final sas = await storage.listStorageAccountServiceSAS(
      storage.ListStorageAccountServiceSASArgs(
        accountName: account.output(),
        protocols: storage.HttpProtocol.valueHttps.output(),
        sharedAccessStartTime: '2021-01-01'.output(),
        sharedAccessExpiryTime: '2030-01-01'.output(),
        resource: storage.SignedResource.valueC.wireValue.output(),
        resourceGroupName: resourceGroup.output(),
        permissions: storage.Permissions.valueR.wireValue.output(),
        canonicalizedResource: '/blob/$account/$container'.output(),
        contentType: 'application/json'.output(),
        cacheControl: 'max-age=5'.output(),
        contentDisposition: 'inline'.output(),
        contentEncoding: 'deflate'.output(),
      ),
    );

    return 'https://$account.blob.core.windows.net/$container/$blob?${sas.serviceSasToken}';
  });
}

class AzureNativeAppServiceSqlStack extends pulumi.Stack {
  AzureNativeAppServiceSqlStack() : super() {
    final config = pulumi.Config();
    final sqlPassword = config.require('sqlPassword');
    final username = 'pulumi';

    final resourceGroup = resources.ResourceGroup('rg');

    final storageAccount = storage.StorageAccount(
      'sa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        kind: storage.Kind.valueStorageV2.wireValue.output(),
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
      ),
    );

    final appServicePlan = web.AppServicePlan(
      'asp',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        kind: 'App'.output(),
        sku: web.SkuDescription(
          name: 'B1'.output(),
          tier: 'Basic'.output(),
        ).output(),
      ),
    );

    final storageContainer = storage.BlobContainer(
      'container',
      args: storage.BlobContainerArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        publicAccess: storage.PublicAccess.valueNone.output(),
      ),
    );

    final blob = storage.Blob(
      'blob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: storageContainer.name,
        source: pulumi.FileArchive('wwwroot').output(),
      ),
    );

    final codeBlobUrl = getSASToken(
      storageAccount.name,
      storageContainer.name,
      blob.name,
      resourceGroup.name,
    );

    final appInsights = applicationinsights.Component(
      'ai',
      args: applicationinsights.ComponentArgs(
        resourceGroupName: resourceGroup.name,
        kind: 'web'.output(),
        ingestionMode: 'ApplicationInsights'.output(),
        applicationType: applicationinsights.ApplicationType.valueWeb.wireValue
            .output(),
      ),
    );

    final sqlServer = sql.Server(
      'sqlserver',
      args: sql.ServerArgs(
        resourceGroupName: resourceGroup.name,
        administratorLogin: username.output(),
        administratorLoginPassword: sqlPassword.output(),
        version: '12.0'.output(),
      ),
    );

    final database = sql.Database(
      'db',
      args: sql.DatabaseArgs(
        resourceGroupName: resourceGroup.name,
        serverName: sqlServer.name,
        sku: sql.Sku(name: 'S0'.output()).output(),
      ),
    );

    final sqlConnectionString =
        pulumi.Output.tuple(sqlServer.name, database.name).apply<String>((
          pair,
        ) {
          final server = pair.$1;
          final db = pair.$2;
          return 'Server=tcp:$server.database.windows.net;initial catalog=$db;user ID=$username;password=$sqlPassword;Min Pool Size=0;Max Pool Size=30;Persist Security Info=true;';
        });

    final appInsightsConnectionString = appInsights.instrumentationKey
        .apply<String>((key) => 'InstrumentationKey=$key');

    final app = web.WebApp(
      'webapp',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: appServicePlan.id,
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'APPINSIGHTS_INSTRUMENTATIONKEY'.output(),
              value: appInsights.instrumentationKey,
            ),
            web.NameValuePair(
              name: 'APPLICATIONINSIGHTS_CONNECTION_STRING'.output(),
              value: appInsightsConnectionString,
            ),
            web.NameValuePair(
              name: 'ApplicationInsightsAgent_EXTENSION_VERSION'.output(),
              value: '~2'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: codeBlobUrl,
            ),
          ].output(),
          connectionStrings: [
            web.ConnStringInfo(
              name: 'db'.output(),
              connectionString: sqlConnectionString,
              type: web.ConnectionStringType.valueSQLAzure.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final endpoint = app.defaultHostName.apply((host) => 'https://$host');
    registerOutputs(<String, pulumi.Output<dynamic>>{'endpoint': endpoint});
  }
}
