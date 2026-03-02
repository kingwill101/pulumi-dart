// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_dynamic_schema_args_doc}
/// The set of arguments for DynamicSchema.
/// {@endtemplate}
/// {@macro pulumi_edge_dynamic_schema_args_doc}
class DynamicSchemaArgs {
  /// The name of the DynamicSchema
  final pulumi.Input<String>? dynamicSchemaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;

  /// Creates a new [DynamicSchemaArgs].
  /// [dynamicSchemaName] The name of the DynamicSchema
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  DynamicSchemaArgs({
    this.dynamicSchemaName,
    required this.resourceGroupName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicSchemaName': ?dynamicSchemaName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory DynamicSchemaArgs.fromMap(Map<String, dynamic> map) {
    return DynamicSchemaArgs(
      dynamicSchemaName: map['dynamicSchemaName'] == null ? null : (map['dynamicSchemaName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
    );
  }
}

