// ignore_for_file: unused_element, unnecessary_cast

import '../data_repository_association_s3_auto_export_policy/data_repository_association_s3_auto_export_policy.dart';
import '../data_repository_association_s3_auto_import_policy/data_repository_association_s3_auto_import_policy.dart';

class DataRepositoryAssociationS3 {
  /// Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the <span pulumi-lang-nodejs="`events`" pulumi-lang-dotnet="`Events`" pulumi-lang-go="`events`" pulumi-lang-python="`events`" pulumi-lang-yaml="`events`" pulumi-lang-java="`events`">`events`</span> configuration block.
  final DataRepositoryAssociationS3AutoExportPolicy? autoExportPolicy;

  /// Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the <span pulumi-lang-nodejs="`events`" pulumi-lang-dotnet="`Events`" pulumi-lang-go="`events`" pulumi-lang-python="`events`" pulumi-lang-yaml="`events`" pulumi-lang-java="`events`">`events`</span> configuration block.
  final DataRepositoryAssociationS3AutoImportPolicy? autoImportPolicy;

  DataRepositoryAssociationS3({
    this.autoExportPolicy,
    this.autoImportPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoExportPolicyValue = autoExportPolicy;
    if (autoExportPolicyValue != null) {
      map['autoExportPolicy'] = autoExportPolicyValue.toMap();
    }
    final autoImportPolicyValue = autoImportPolicy;
    if (autoImportPolicyValue != null) {
      map['autoImportPolicy'] = autoImportPolicyValue.toMap();
    }
    return map;
  }

  factory DataRepositoryAssociationS3.fromMap(Map<String, dynamic> map) {
    return DataRepositoryAssociationS3(
      autoExportPolicy: map['autoExportPolicy'] == null
          ? null
          : DataRepositoryAssociationS3AutoExportPolicy.fromMap(
              (map['autoExportPolicy'] as Map).cast<String, dynamic>()),
      autoImportPolicy: map['autoImportPolicy'] == null
          ? null
          : DataRepositoryAssociationS3AutoImportPolicy.fromMap(
              (map['autoImportPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
