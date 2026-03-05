// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_repository_association_s3_auto_export_policy.dart';
import 'data_repository_association_s3_auto_import_policy.dart';

class DataRepositoryAssociationS3 {
  /// Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the `events` configuration block.
  final pulumi.Input<DataRepositoryAssociationS3AutoExportPolicy>? autoExportPolicy;
  /// Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the `events` configuration block.
  final pulumi.Input<DataRepositoryAssociationS3AutoImportPolicy>? autoImportPolicy;

  /// Creates a new [DataRepositoryAssociationS3].
  /// [autoExportPolicy] Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the `events` configuration block.
  /// [autoImportPolicy] Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the `events` configuration block.
  DataRepositoryAssociationS3({
    this.autoExportPolicy,
    this.autoImportPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExportPolicy': ?pulumi.Input.mapOptionalInputValue<DataRepositoryAssociationS3AutoExportPolicy, Map<String, dynamic>>(autoExportPolicy, (value) => value.toMap()),
      'autoImportPolicy': ?pulumi.Input.mapOptionalInputValue<DataRepositoryAssociationS3AutoImportPolicy, Map<String, dynamic>>(autoImportPolicy, (value) => value.toMap()),
    };
  }

  factory DataRepositoryAssociationS3.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationS3(
      autoExportPolicy: (() { final guardedValue = map['autoExportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataRepositoryAssociationS3AutoExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoImportPolicy: (() { final guardedValue = map['autoImportPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataRepositoryAssociationS3AutoImportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

