// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob.dart';
import 'sql_file_share.dart';

/// Source Location details of backups.
class SourceLocation {
  /// Source Azure Blob.
  final AzureBlob? azureBlob;
  /// Source File share.
  final SqlFileShare? fileShare;

  /// Creates a new [SourceLocation].
  /// [azureBlob] Source Azure Blob.
  /// [fileShare] Source File share.
  SourceLocation({
    this.azureBlob,
    this.fileShare,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlob': ?azureBlob == null ? null : azureBlob!.toMap(),
      'fileShare': ?fileShare == null ? null : fileShare!.toMap(),
    };
  }

  factory SourceLocation.fromMap(Map<String, dynamic> map) {
    return SourceLocation(
      azureBlob: map['azureBlob'] == null ? null : AzureBlob.fromMap((map['azureBlob'] as Map).cast<String, dynamic>()),
      fileShare: map['fileShare'] == null ? null : SqlFileShare.fromMap((map['fileShare'] as Map).cast<String, dynamic>()),
    );
  }
}

