import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;

class _StaticWebAppResources {
  _StaticWebAppResources({required this.webEndpoint});

  final pulumi.Output<String?> webEndpoint;
}

_StaticWebAppResources _createStaticWebApp(
  String name, {
  String documentsRoot = 'website',
  String indexDocument = 'index.html',
  String error404Document = '404.html',
}) {
  final resourceGroup = resources.ResourceGroup(
    '$name-group',
    args: resources.ResourceGroupArgs(location: 'WestUs'.output()),
  );

  final storageAccount = storage.StorageAccount(
    '$name-storage',
    args: storage.StorageAccountArgs(
      resourceGroupName: resourceGroup.name,
      kind: storage.Kind.valueStorageV2.wireValue.output(),
      sku: storage.Sku(
        name: storage.SkuName.valueStandardLRS.wireValue.output(),
      ).output(),
    ),
  );

  final staticWebsite = storage.StorageAccountStaticWebsite(
    '$name-website',
    args: storage.StorageAccountStaticWebsiteArgs(
      accountName: storageAccount.name,
      resourceGroupName: resourceGroup.name,
      indexDocument: indexDocument.output(),
      error404Document: error404Document.output(),
    ),
  );

  for (final fileName in <String>[
    indexDocument,
    error404Document,
    'favicon.png',
  ]) {
    final contentType = fileName.endsWith('.png') ? 'image/png' : 'text/html';

    storage.Blob(
      '$name-${fileName.replaceAll('.', '-')}-blob',
      args: storage.BlobArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        containerName: staticWebsite.containerName,
        blobName: fileName.output(),
        source: pulumi.FileAsset('./$documentsRoot/$fileName').output(),
        contentType: contentType.output(),
      ),
    );
  }

  return _StaticWebAppResources(
    webEndpoint: storageAccount.primaryEndpoints.apply(
      (endpoints) => endpoints.web,
    ),
  );
}

class AzureNativeCueStaticWebAppStack extends pulumi.Stack {
  AzureNativeCueStaticWebAppStack() : super() {
    final rawkode = _createStaticWebApp('rawkode');
    final stack72 = _createStaticWebApp(
      'stack72',
      documentsRoot: 'website',
      indexDocument: 'index.html',
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'rawkodeEndpoint': rawkode.webEndpoint,
      'stack72Endpoint': stack72.webEndpoint,
    });
  }
}
