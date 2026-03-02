// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_response.dart';
import 'sql_file_share_response.dart';

/// Source Location details of backups.
class SourceLocationResponse {
  /// Source Azure Blob.
  final pulumi.Input<AzureBlobResponse>? azureBlob;
  /// Source File share.
  final pulumi.Input<SqlFileShareResponse>? fileShare;
  /// Backup storage Type.
  final pulumi.Input<String> fileStorageType;

  /// Creates a new [SourceLocationResponse].
  /// [azureBlob] Source Azure Blob.
  /// [fileShare] Source File share.
  /// [fileStorageType] Backup storage Type.
  SourceLocationResponse({
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
      azureBlob: map['azureBlob'] == null ? null : (AzureBlobResponse.fromMap((map['azureBlob'] as Map).cast<String, dynamic>())).input(),
      fileShare: map['fileShare'] == null ? null : (SqlFileShareResponse.fromMap((map['fileShare'] as Map).cast<String, dynamic>())).input(),
      fileStorageType: (map['fileStorageType'] as String).input(),
    );
  }
}

