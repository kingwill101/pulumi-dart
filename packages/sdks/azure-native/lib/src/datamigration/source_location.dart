// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob.dart';
import 'sql_file_share.dart';

/// Source Location details of backups.
class SourceLocation {
  /// Source Azure Blob.
  final pulumi.Input<AzureBlob>? azureBlob;
  /// Source File share.
  final pulumi.Input<SqlFileShare>? fileShare;

  /// Creates a new [SourceLocation].
  /// [azureBlob] Source Azure Blob.
  /// [fileShare] Source File share.
  SourceLocation({
    this.azureBlob,
    this.fileShare,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlob': ?pulumi.Input.mapOptionalInputValue<AzureBlob, Map<String, dynamic>>(azureBlob, (value) => value.toMap()),
      'fileShare': ?pulumi.Input.mapOptionalInputValue<SqlFileShare, Map<String, dynamic>>(fileShare, (value) => value.toMap()),
    };
  }

  factory SourceLocation.fromMap(Map<String, dynamic> map) {
    return SourceLocation(
      azureBlob: map['azureBlob'] == null ? null : (AzureBlob.fromMap((map['azureBlob'] as Map).cast<String, dynamic>())).input(),
      fileShare: map['fileShare'] == null ? null : (SqlFileShare.fromMap((map['fileShare'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

