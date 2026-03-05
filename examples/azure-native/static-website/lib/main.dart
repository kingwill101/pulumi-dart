import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/cdn.dart' as cdn;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;

class AzureNativeStaticWebsiteStack extends pulumi.Stack {
  AzureNativeStaticWebsiteStack() : super() {
    final resourceGroup = resources.ResourceGroup('resourceGroup');

    final profile = cdn.Profile(
      'profile',
      args: cdn.ProfileArgs(
        resourceGroupName: resourceGroup.name,
        sku: cdn.Sku(
          name: cdn.SkuName.standardMicrosoft.wireValue.input(),
        ).input(),
      ),
    );

    final storageAccount = storage.StorageAccount(
      'storageaccount',
      args: storage.StorageAccountArgs(
        enableHttpsTrafficOnly: true.input(),
        kind: storage.Kind.valueStorageV2.wireValue.input(),
        resourceGroupName: resourceGroup.name,
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.input(),
        ).input(),
      ),
    );

    final staticWebsite = storage.StorageAccountStaticWebsite(
      'staticWebsite',
      args: storage.StorageAccountStaticWebsiteArgs(
        accountName: storageAccount.name,
        resourceGroupName: resourceGroup.name,
        indexDocument: 'index.html'.input(),
        error404Document: '404.html'.input(),
      ),
    );

    for (final name in ['index.html', '404.html']) {
      storage.Blob(
        'blob-$name',
        args: storage.BlobArgs(
          resourceGroupName: resourceGroup.name,
          accountName: storageAccount.name,
          containerName: staticWebsite.containerName,
          blobName: name.input(),
          source: pulumi.FileAsset('./wwwroot/$name').input(),
          contentType: 'text/html'.input(),
        ),
      );
    }

    final staticEndpoint = storageAccount.primaryEndpoints.apply(
      (endpoints) => endpoints.web,
    );

    final endpointOrigin = staticEndpoint.apply<String>((webEndpoint) {
      final uri = Uri.parse(webEndpoint);
      return uri.host;
    });

    final endpoint = cdn.Endpoint(
      'endpoint',
      args: cdn.EndpointArgs(
        endpointName: storageAccount.name.apply((name) => 'cdn-endpnt-$name'),
        isHttpAllowed: false.input(),
        isHttpsAllowed: true.input(),
        originHostHeader: endpointOrigin,
        origins: [
          cdn.DeepCreatedOrigin(
            hostName: endpointOrigin,
            httpsPort: 443.input(),
            name: 'origin-storage-account'.input(),
          ),
        ].input(),
        profileName: profile.name,
        queryStringCachingBehavior: cdn.QueryStringCachingBehavior.valueNotSet
            .input(),
        resourceGroupName: resourceGroup.name,
      ),
    );

    registerOutputs({
      'staticEndpoint': staticEndpoint,
      'cdnEndpoint': endpoint.hostName.apply((host) => 'https://$host/'),
    });
  }
}
