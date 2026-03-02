// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_dynamic_schema_version_args_doc}
/// Arguments for getDynamicSchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_get_dynamic_schema_version_args_doc}
class GetDynamicSchemaVersionArgs {
  /// The name of the DynamicSchema
  final pulumi.Input<String> dynamicSchemaName;
  /// The name of the DynamicSchemaVersion
  final pulumi.Input<String> dynamicSchemaVersionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;

  /// Creates a new [GetDynamicSchemaVersionArgs].
  /// [dynamicSchemaName] The name of the DynamicSchema
  /// [dynamicSchemaVersionName] The name of the DynamicSchemaVersion
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  GetDynamicSchemaVersionArgs({
    required this.dynamicSchemaName,
    required this.dynamicSchemaVersionName,
    required this.resourceGroupName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicSchemaName': dynamicSchemaName,
      'dynamicSchemaVersionName': dynamicSchemaVersionName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory GetDynamicSchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamicSchemaVersionArgs(
      dynamicSchemaName: (map['dynamicSchemaName'] as String).input(),
      dynamicSchemaVersionName: (map['dynamicSchemaVersionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
    );
  }
}

