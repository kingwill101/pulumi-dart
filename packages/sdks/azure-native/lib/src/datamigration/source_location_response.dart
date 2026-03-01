// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_response.dart';
import 'sql_file_share_response.dart';

/// Source Location details of backups.
class SourceLocationResponse {
  /// Source Azure Blob.
  final AzureBlobResponse? azureBlob;
  /// Source File share.
  final SqlFileShareResponse? fileShare;
  /// Backup storage Type.
  final String fileStorageType;

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
      'azureBlob': ?azureBlob == null ? null : azureBlob!.toMap(),
      'fileShare': ?fileShare == null ? null : fileShare!.toMap(),
      'fileStorageType': fileStorageType,
    };
  }

  factory SourceLocationResponse.fromMap(Map<String, dynamic> map) {
    return SourceLocationResponse(
      azureBlob: map['azureBlob'] == null ? null : AzureBlobResponse.fromMap((map['azureBlob'] as Map).cast<String, dynamic>()),
      fileShare: map['fileShare'] == null ? null : SqlFileShareResponse.fromMap((map['fileShare'] as Map).cast<String, dynamic>()),
      fileStorageType: map['fileStorageType'] as String,
    );
  }
}

