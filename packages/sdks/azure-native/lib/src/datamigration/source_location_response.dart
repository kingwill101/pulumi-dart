// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_response.dart';
import 'sql_file_share_response.dart';

/// Source Location details of backups.
class SourceLocationResponse {
  /// Source Azure Blob.
  final pulumi.Input<AzureBlobResponse?>? azureBlob;
  /// Source File share.
  final pulumi.Input<SqlFileShareResponse?>? fileShare;
  /// Backup storage Type.
  final pulumi.Input<String> fileStorageType;

  /// Creates a new [SourceLocationResponse].
  /// [azureBlob] Source Azure Blob.
  /// [fileShare] Source File share.
  /// [fileStorageType] Backup storage Type.
  const SourceLocationResponse({
    this.azureBlob,
    this.fileShare,
    required this.fileStorageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlob': ?pulumi.Input.mapOptionalInputValue<AzureBlobResponse, Map<String, dynamic>>(azureBlob, (value) => value.toMap()),
      'fileShare': ?pulumi.Input.mapOptionalInputValue<SqlFileShareResponse, Map<String, dynamic>>(fileShare, (value) => value.toMap()),
      'fileStorageType': fileStorageType,
    };
  }

  factory SourceLocationResponse.fromMap(Map<String, dynamic> map) {
    return SourceLocationResponse(
      azureBlob: (() { final guardedValue = map['azureBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBlobResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileShare: (() { final guardedValue = map['fileShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlFileShareResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileStorageType: pulumi.Input.fromValue(map['fileStorageType'] as String),
    );
  }
}
