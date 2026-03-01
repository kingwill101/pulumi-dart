// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the import pipeline source.
class ImportPipelineSourceProperties {
  /// They key vault secret uri to obtain the source storage SAS token.
  final String keyVaultUri;
  /// The type of source for the import pipeline.
  final String? type;
  /// The source uri of the import pipeline.
  /// When 'AzureStorageBlob': "https://accountName.blob.core.windows.net/containerName/blobName"
  /// When 'AzureStorageBlobContainer': "https://accountName.blob.core.windows.net/containerName"
  final String? uri;

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
      keyVaultUri: map['keyVaultUri'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

