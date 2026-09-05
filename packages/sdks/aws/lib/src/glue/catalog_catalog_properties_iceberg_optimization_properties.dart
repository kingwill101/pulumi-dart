// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogCatalogPropertiesIcebergOptimizationProperties {
  /// Map of key-value pairs for compaction settings.
  final pulumi.Input<Map<String, String>?>? compaction;
  /// Map of key-value pairs for orphan file deletion settings.
  final pulumi.Input<Map<String, String>?>? orphanFileDeletion;
  /// Map of key-value pairs for retention settings.
  final pulumi.Input<Map<String, String>?>? retention;
  /// ARN of the IAM role for Iceberg optimization.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [CatalogCatalogPropertiesIcebergOptimizationProperties].
  /// [compaction] Map of key-value pairs for compaction settings.
  /// [orphanFileDeletion] Map of key-value pairs for orphan file deletion settings.
  /// [retention] Map of key-value pairs for retention settings.
  /// [roleArn] ARN of the IAM role for Iceberg optimization.
  const CatalogCatalogPropertiesIcebergOptimizationProperties({
    this.compaction,
    this.orphanFileDeletion,
    this.retention,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compaction': ?compaction,
      'orphanFileDeletion': ?orphanFileDeletion,
      'retention': ?retention,
      'roleArn': ?roleArn,
    };
  }

  factory CatalogCatalogPropertiesIcebergOptimizationProperties.fromMap(Map<String, dynamic> map) {
    return CatalogCatalogPropertiesIcebergOptimizationProperties(
      compaction: (() { final guardedValue = map['compaction']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      orphanFileDeletion: (() { final guardedValue = map['orphanFileDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
