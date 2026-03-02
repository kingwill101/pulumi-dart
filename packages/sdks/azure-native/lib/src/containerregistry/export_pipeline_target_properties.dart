// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the export pipeline target.
class ExportPipelineTargetProperties {
  /// They key vault secret uri to obtain the target storage SAS token.
  final pulumi.Input<String> keyVaultUri;
  /// The type of target for the export pipeline.
  final pulumi.Input<String>? type;
  /// The target uri of the export pipeline.
  /// When 'AzureStorageBlob': "https://accountName.blob.core.windows.net/containerName/blobName"
  /// When 'AzureStorageBlobContainer':  "https://accountName.blob.core.windows.net/containerName"
  final pulumi.Input<String>? uri;

  /// Creates a new [ExportPipelineTargetProperties].
  /// [keyVaultUri] They key vault secret uri to obtain the target storage SAS token.
  /// [type] The type of target for the export pipeline.
  /// [uri] The target uri of the export pipeline.
  ExportPipelineTargetProperties({
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

  factory ExportPipelineTargetProperties.fromMap(Map<String, dynamic> map) {
    return ExportPipelineTargetProperties(
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

