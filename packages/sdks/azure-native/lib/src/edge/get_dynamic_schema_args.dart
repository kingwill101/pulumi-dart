// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_dynamic_schema_args_doc}
/// Arguments for getDynamicSchema.
/// {@endtemplate}
/// {@macro pulumi_edge_get_dynamic_schema_args_doc}
class GetDynamicSchemaArgs {
  /// The name of the DynamicSchema
  final pulumi.Input<String> dynamicSchemaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;

  /// Creates a new [GetDynamicSchemaArgs].
  /// [dynamicSchemaName] The name of the DynamicSchema
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  const GetDynamicSchemaArgs({
    required this.dynamicSchemaName,
    required this.resourceGroupName,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicSchemaName': dynamicSchemaName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory GetDynamicSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamicSchemaArgs(
      dynamicSchemaName: pulumi.Input.fromValue(map['dynamicSchemaName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}
