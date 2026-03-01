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
    required pulumi.Output<String> dynamicSchemaName,
    required pulumi.Output<String> dynamicSchemaVersionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
  }) :
      dynamicSchemaName = pulumi.Input.asInput<String>(dynamicSchemaName),
      dynamicSchemaVersionName = pulumi.Input.asInput<String>(dynamicSchemaVersionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName);

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
      dynamicSchemaName: pulumi.Output.create<String>(map['dynamicSchemaName'] as String),
      dynamicSchemaVersionName: pulumi.Output.create<String>(map['dynamicSchemaVersionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
    );
  }
}

