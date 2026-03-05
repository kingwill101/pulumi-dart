import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/web.dart' as web;

String _findAppArchive() {
  final distDir = Directory('app/build/dist');
  if (!distDir.existsSync()) {
    throw Exception(
      'Could not find app archive directory at ./app/build/dist; run `cd app && gradle packageDistribution` first.',
    );
  }

  final archives = distDir
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('-app.zip'))
      .toList(growable: false);

  if (archives.isEmpty) {
    throw Exception(
      'Could not find app archive matching ./app/build/dist/*-app.zip; run `cd app && gradle packageDistribution`.',
    );
  }
  if (archives.length > 1) {
    throw Exception(
      'Found more than one app archive in ./app/build/dist/*-app.zip; cannot decide which archive to deploy.',
    );
  }

  return archives.first.path;
}

pulumi.Output<String> _getConnectionString(
  pulumi.Input<String> resourceGroupName,
  pulumi.Input<String> accountName,
) {
  return pulumi.Output.tuple(
    resourceGroupName.output(),
    accountName.output(),
  ).apply((pair) async {
    final keys = await storage.listStorageAccountKeys(
      storage.ListStorageAccountKeysArgs(
        resourceGroupName: pair.$1.output(),
        accountName: pair.$2.output(),
      ),
    );

    if (keys.keys.isEmpty) {
      throw Exception('Storage account keys list is empty');
    }

    return 'DefaultEndpointsProtocol=https;AccountName=${pair.$2};AccountKey=${keys.keys.first.value}';
  });
}

pulumi.Output<String> _signedBlobReadUrl(
  storage.Blob blob,
  storage.BlobContainer container,
  storage.StorageAccount account,
  resources.ResourceGroup resourceGroup,
) {
  return pulumi.Output.tuple4(
    account.name,
    container.name,
    blob.name,
    resourceGroup.name,
  ).apply((values) async {
    final accountName = values.$1;
    final containerName = values.$2;
    final blobName = values.$3;
    final resourceGroupName = values.$4;

    final sas = await storage.listStorageAccountServiceSAS(
      storage.ListStorageAccountServiceSASArgs(
        resourceGroupName: resourceGroupName.output(),
        accountName: accountName.output(),
        protocols: storage.HttpProtocol.valueHttps.output(),
        sharedAccessExpiryTime: '2030-01-01'.output(),
        sharedAccessStartTime: '2021-01-01'.output(),
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

class AzureNativeFunctionGraalSpringStack extends pulumi.Stack {
  AzureNativeFunctionGraalSpringStack() : super() {
    final resourceGroup = resources.ResourceGroup('linux-fn-rg');

    final storageAccount = storage.StorageAccount(
      'linux-fn-sa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        kind: storage.Kind.valueStorageV2.wireValue.output(),
        sku: storage.Sku(
          name: storage.SkuName.valueStandardLRS.wireValue.output(),
        ).output(),
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
        source: pulumi.FileArchive(_findAppArchive()).output(),
      ),
    );

    final plan = web.AppServicePlan(
      'plan',
      args: web.AppServicePlanArgs(
        resourceGroupName: resourceGroup.name,
        kind: 'Linux'.output(),
        reserved: true.output(),
        sku: web.SkuDescription(
          tier: 'Dynamic'.output(),
          name: 'Y1'.output(),
          capacity: 1.output(),
        ).output(),
      ),
    );

    final storageConnectionString = _getConnectionString(
      resourceGroup.name,
      storageAccount.name,
    );
    final codeBlobUrl = _signedBlobReadUrl(
      codeBlob,
      codeContainer,
      storageAccount,
      resourceGroup,
    );

    final app = web.WebApp(
      'function',
      args: web.WebAppArgs(
        resourceGroupName: resourceGroup.name,
        serverFarmId: plan.id,
        kind: 'functionapp,linux,container'.output(),
        httpsOnly: true.output(),
        siteConfig: web.SiteConfig(
          numberOfWorkers: 1.output(),
          minTlsVersion: '1.2'.output(),
          ftpsState: 'Disabled'.output(),
          appSettings: [
            web.NameValuePair(
              name: 'AzureWebJobsStorage'.output(),
              value: storageConnectionString,
            ),
            web.NameValuePair(
              name: 'WEBSITE_RUN_FROM_PACKAGE'.output(),
              value: codeBlobUrl,
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_EXTENSION_VERSION'.output(),
              value: '~3'.output(),
            ),
            web.NameValuePair(
              name: 'FUNCTIONS_WORKER_RUNTIME'.output(),
              value: 'powershell'.output(),
            ),
          ].output(),
        ).output(),
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'functionName': app.name,
      'endpoint': app.defaultHostName.apply(
        (host) => 'https://$host/api/hello',
      ),
    });
  }
}
