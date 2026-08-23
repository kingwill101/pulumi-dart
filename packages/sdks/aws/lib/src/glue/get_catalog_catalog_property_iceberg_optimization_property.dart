// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCatalogPropertyIcebergOptimizationProperty {
  final pulumi.Input<Map<String, String>> compaction;
  final pulumi.Input<Map<String, String>> orphanFileDeletion;
  final pulumi.Input<Map<String, String>> retention;
  final pulumi.Input<String> roleArn;

  /// Creates a new [GetCatalogCatalogPropertyIcebergOptimizationProperty].
  /// [compaction] Required.
  /// [orphanFileDeletion] Required.
  /// [retention] Required.
  /// [roleArn] Required.
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
