import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;

pulumi.Output<String> getConnectionString(
  pulumi.Input<String> resourceGroupName,
  pulumi.Input<String> accountName,
) {
  return pulumi.Output.tuple(
    resourceGroupName.output(),
    accountName.output(),
  ).apply((pair) async {
    final rg = pair.$1;
    final account = pair.$2;

    final keys = await storage.listStorageAccountKeys(
      storage.ListStorageAccountKeysArgs(
        resourceGroupName: rg.output(),
        accountName: account.output(),
      ),
    );

    if (keys.keys.isEmpty) {
      throw Exception('Storage account keys list is empty');
    }

    return keys.keys.first.value.output().apply(
      (primaryKey) =>
          'DefaultEndpointsProtocol=https;AccountName=$account;AccountKey=$primaryKey',
    );
  });
}

pulumi.Output<String> signedBlobReadUrl(
  storage.Blob blob,
  storage.BlobContainer container,
  storage.StorageAccount account,
  resources.ResourceGroup resourceGroup,
) {
  return pulumi.Output.all<dynamic>([
    account.name,
    container.name,
    blob.name,
    resourceGroup.name,
  ]).apply((values) async {
    final accountName = values[0] as String;
    final containerName = values[1] as String;
    final blobName = values[2] as String;
    final resourceGroupName = values[3] as String;

    final sas = await storage.listStorageAccountServiceSAS(
      storage.ListStorageAccountServiceSASArgs(
        accountName: accountName.output(),
        protocols: storage.HttpProtocol.valueHttps.output(),
        sharedAccessExpiryTime: '2030-01-01'.output(),
        sharedAccessStartTime: '2021-01-01'.output(),
        resourceGroupName: resourceGroupName.output(),
        resource: storage.SignedResource.valueC.wireValue.output(),
        permissions: storage.Permissions.valueR.wireValue.output(),
        canonicalizedResource: '/blob/$accountName/$containerName'.output(),
        contentType: 'application/json'.output(),
        cacheControl: 'max-age=5'.output(),
        contentDisposition: 'inline'.output(),
        contentEncoding: 'deflate'.output(),
      ),
    );

    return 'https://$accountName.blob.core.windows.net/$containerName/$blobName?${sas.serviceSasToken}';
  });
}

class AzureNativeFunctionsStack extends pulumi.Stack {
  AzureNativeFunctionsStack() : super() {
    final resourceGroup = resources.ResourceGroup('functions-rg');

    final storageAccount = storage.StorageAccount(
      'sa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
        kind: storage.Kind.valueStorageV2.wireValue.output(),
      ),
    );

    final codeContainer = storage.BlobContainer(
      'zips',
      args: storage.BlobContainerArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
      ),
    );

    final codeBlob = storage.Blob(
      'zip',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: codeContainer.name,
        source: pulumi.FileArchive('./javascript').output(),
      ),
    );

    final plan = web.AppServicePlan(
      'plan',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        sku: web.SkuDescription(
          name: 'Y1'.output(),
          tier: 'Dynamic'.output(),
        ).output(),
      ),
    );

    final storageConnectionString = getConnectionString(
      resourceGroup.name,
      storageAccount.name,
    );
    final codeBlobUrl = signedBlobReadUrl(
      codeBlob,
      codeContainer,
      storageAccount,
      resourceGroup,
    );

    final app = web.WebApp(
      'fa',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'functionapp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'AzureWebJobsStorage'.output(),
              value: storageConnectionString,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'node'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_NODE_DEFAULT_VERSION'.output(),
              value: '~14'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: codeBlobUrl,
            ),
          ].output(),
          http20Enabled: true.output(),
          nodeVersion: '~14'.output(),
        ).output(),
      ),
    );

    final endpoint = app.defaultHostName.apply(
      (hostname) => 'https://$hostname/api/HelloNode?name=Pulumi',
    );
    registerOutputs(<String, pulumi.Output<dynamic>>{'endpoint': endpoint});
  }
}
