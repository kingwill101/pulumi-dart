// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the export pipeline target.
class ExportPipelineTargetPropertiesResponse {
  /// They key vault secret uri to obtain the target storage SAS token.
  final pulumi.Input<String> keyVaultUri;

  /// The type of target for the export pipeline.
  final pulumi.Input<String>? type;

  /// The target uri of the export pipeline.
  /// When 'AzureStorageBlob': "https://accountName.blob.core.windows.net/containerName/blobName"
  /// When 'AzureStorageBlobContainer':  "https://accountName.blob.core.windows.net/containerName"
  final pulumi.Input<String>? uri;

  /// Creates a new [ExportPipelineTargetPropertiesResponse].
  /// [keyVaultUri] They key vault secret uri to obtain the target storage SAS token.
  /// [type] The type of target for the export pipeline.
  /// [uri] The target uri of the export pipeline.
  ExportPipelineTargetPropertiesResponse({
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

  factory ExportPipelineTargetPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExportPipelineTargetPropertiesResponse(
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
