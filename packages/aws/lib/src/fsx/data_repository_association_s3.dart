// ignore_for_file: unused_element, unnecessary_cast

import 'data_repository_association_s3_auto_export_policy.dart';
import 'data_repository_association_s3_auto_import_policy.dart';

class DataRepositoryAssociationS3 {
  /// Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the `events` configuration block.
  final DataRepositoryAssociationS3AutoExportPolicy? autoExportPolicy;

  /// Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the `events` configuration block.
  final DataRepositoryAssociationS3AutoImportPolicy? autoImportPolicy;

  /// Creates a new [DataRepositoryAssociationS3].
  /// [autoExportPolicy] Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the `events` configuration block.
  /// [autoImportPolicy] Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the `events` configuration block.
  DataRepositoryAssociationS3({this.autoExportPolicy, this.autoImportPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExportPolicy': ?autoExportPolicy == null
          ? null
          : autoExportPolicy!.toMap(),
      'autoImportPolicy': ?autoImportPolicy == null
          ? null
          : autoImportPolicy!.toMap(),
    };
  }

  factory DataRepositoryAssociationS3.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationS3(
      autoExportPolicy: map['autoExportPolicy'] == null
          ? null
          : DataRepositoryAssociationS3AutoExportPolicy.fromMap(
              (map['autoExportPolicy'] as Map).cast<String, dynamic>(),
            ),
      autoImportPolicy: map['autoImportPolicy'] == null
          ? null
          : DataRepositoryAssociationS3AutoImportPolicy.fromMap(
              (map['autoImportPolicy'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
