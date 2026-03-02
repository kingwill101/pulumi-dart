// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the import pipeline source.
class ImportPipelineSourceProperties {
  /// They key vault secret uri to obtain the source storage SAS token.
  final pulumi.Input<String> keyVaultUri;
  /// The type of source for the import pipeline.
  final pulumi.Input<String>? type;
  /// The source uri of the import pipeline.
  /// When 'AzureStorageBlob': "https://accountName.blob.core.windows.net/containerName/blobName"
  /// When 'AzureStorageBlobContainer': "https://accountName.blob.core.windows.net/containerName"
  final pulumi.Input<String>? uri;

  /// Creates a new [ImportPipelineSourceProperties].
  /// [keyVaultUri] They key vault secret uri to obtain the source storage SAS token.
  /// [type] The type of source for the import pipeline.
  /// [uri] The source uri of the import pipeline.
  ImportPipelineSourceProperties({
    required this.keyVaultUri,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUri': keyVaultUri,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory ImportPipelineSourceProperties.fromMap(Map<String, dynamic> map) {
    return ImportPipelineSourceProperties(
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

