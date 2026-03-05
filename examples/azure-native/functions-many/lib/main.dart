import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;

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

class AzureNativeFunctionsManyStack extends pulumi.Stack {
  AzureNativeFunctionsManyStack() : super() {
    final resourceGroup = resources.ResourceGroup('windowsrg');

    final storageAccount = storage.StorageAccount(
      'functionsa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        kind: storage.Kind.valueStorageV2.wireValue.output(),
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
      ),
    );

    final plan = web.AppServicePlan(
      'windows-plan',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        sku: web.SkuDescription(
          name: 'Y1'.output(),
          tier: 'Dynamic'.output(),
        ).output(),
      ),
    );

    final container = storage.BlobContainer(
      'container',
      args: storage.BlobContainerArgs(
        accountName: storageAccount.name,
        resourceGroupName: resourceGroup.name,
        publicAccess: storage.PublicAccess.valueNone.output(),
      ),
    );

    final dotnetBlob = storage.Blob(
      'dotnetBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive(
          './dotnet/bin/Debug/net8.0/publish',
        ).output(),
      ),
    );
    final dotnetBlobSignedURL = signedBlobReadUrl(
      dotnetBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final dotnetApp = web.WebApp(
      'httpdotnet',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'runtime'.output(),
              value: 'dotnet'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'dotnet'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: dotnetBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final nodeBlob = storage.Blob(
      'nodeBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive('./javascript').output(),
      ),
    );
    final nodeBlobSignedURL = signedBlobReadUrl(
      nodeBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final nodeApp = web.WebApp(
      'httpnode',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(name: 'runtime'.output(), value: 'node'.output()),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'node'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: nodeBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'WEBSITE_NODE_DEFAULT_VERSION'.output(),
              value: '~12'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final powershellBlob = storage.Blob(
      'powershellBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive('./powershell').output(),
      ),
    );
    final powershellBlobSignedURL = signedBlobReadUrl(
      powershellBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final powershellApp = web.WebApp(
      'httppowershell',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'runtime'.output(),
              value: 'powershell'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'powershell'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: powershellBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final javaBlob = storage.Blob(
      'javaBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive(
          './java/target/azure-functions/fabrikam-functions',
        ).output(),
      ),
    );
    final javaBlobSignedURL = signedBlobReadUrl(
      javaBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final javaApp = web.WebApp(
      'httpjava',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(name: 'runtime'.output(), value: 'java'.output()),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'java'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: javaBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final linuxResourceGroup = resources.ResourceGroup('linuxrg');
    final linuxPlan = web.AppServicePlan(
      'linux-asp',
      args: web.AppServicePlanArgs(
        resourceGroupName: linuxResourceGroup.name,
        kind: 'Linux'.output(),
        sku: web.SkuDescription(
          name: 'Y1'.output(),
          tier: 'Dynamic'.output(),
        ).output(),
        reserved: true.output(),
      ),
    );

    final pythonBlob = storage.Blob(
      'pythonBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive('./python').output(),
      ),
    );
    final pythonBlobSignedURL = signedBlobReadUrl(
      pythonBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final pythonApp = web.WebApp(
      'httppython',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: linuxPlan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'runtime'.output(),
              value: 'python'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'python'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: pythonBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    final premiumPlan = web.AppServicePlan(
      'premiumasp',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        kind: 'elastic'.output(),
        sku: web.SkuDescription(
          tier: 'ElasticPremium'.output(),
          name: 'EP1'.output(),
        ).output(),
        maximumElasticWorkerCount: 20.output(),
      ),
    );

    final premiumBlob = storage.Blob(
      'premiumBlob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: container.name,
        source: pulumi.FileArchive(
          './dotnet/bin/Debug/net8.0/publish',
        ).output(),
      ),
    );
    final premiumBlobSignedURL = signedBlobReadUrl(
      premiumBlob,
      container,
      storageAccount,
      resourceGroup,
    );

    final premiumApp = web.WebApp(
      'httppremium',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: premiumPlan.id,
        kind: 'FunctionApp'.output(),
        siteConfig: web.SiteConfig(
          appSettings: [
            web.NameValuePair(
              name: 'runtime'.output(),
              value: 'dotnet'.output(),
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: premiumBlobSignedURL,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'dotnetEndpoint': dotnetApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloDotnet?name=Pulumi',
      ),
      'nodeEndpoint': nodeApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloNode?name=Pulumi',
      ),
      'powershellEndpoint': powershellApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloPS?name=Pulumi',
      ),
      'javaEndpoint': javaApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloJava?name=Pulumi',
      ),
      'pythonEndpoint': pythonApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloPython?name=Pulumi',
      ),
      'premiumEndpoint': premiumApp.defaultHostName.apply(
        (ep) => 'https://$ep/api/HelloDotnet?name=PulumiOnPremium',
      ),
    });
  }
}
