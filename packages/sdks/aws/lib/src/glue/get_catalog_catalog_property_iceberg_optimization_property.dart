// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCatalogPropertyIcebergOptimizationProperty {
  /// Map of key-value pairs for compaction settings.
  final pulumi.Input<Map<String, String>> compaction;
  /// Map of key-value pairs for orphan file deletion settings.
  final pulumi.Input<Map<String, String>> orphanFileDeletion;
  /// Map of key-value pairs for retention settings.
  final pulumi.Input<Map<String, String>> retention;
  /// ARN of the IAM role for Iceberg optimization.
  final pulumi.Input<String> roleArn;

  /// Creates a new [GetCatalogCatalogPropertyIcebergOptimizationProperty].
  /// [compaction] Map of key-value pairs for compaction settings.
  /// [orphanFileDeletion] Map of key-value pairs for orphan file deletion settings.
  /// [retention] Map of key-value pairs for retention settings.
  /// [roleArn] ARN of the IAM role for Iceberg optimization.
  const GetCatalogCatalogPropertyIcebergOptimizationProperty({
    required this.compaction,
    required this.orphanFileDeletion,
    required this.retention,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compaction': compaction,
      'orphanFileDeletion': orphanFileDeletion,
      'retention': retention,
      'roleArn': roleArn,
    };
  }

  factory GetCatalogCatalogPropertyIcebergOptimizationProperty.fromMap(Map<String, dynamic> map) {
    return GetCatalogCatalogPropertyIcebergOptimizationProperty(
      compaction: pulumi.Input.fromValue((map['compaction'] as Map).cast<String, String>()),
      orphanFileDeletion: pulumi.Input.fromValue((map['orphanFileDeletion'] as Map).cast<String, String>()),
      retention: pulumi.Input.fromValue((map['retention'] as Map).cast<String, String>()),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
