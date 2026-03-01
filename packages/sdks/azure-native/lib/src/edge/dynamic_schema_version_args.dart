// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_properties.dart';

/// {@template pulumi_edge_dynamic_schema_version_args_doc}
/// The set of arguments for DynamicSchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_dynamic_schema_version_args_doc}
class DynamicSchemaVersionArgs {
  /// The name of the DynamicSchema
  final pulumi.Input<String> dynamicSchemaName;
  /// The name of the DynamicSchemaVersion
  final pulumi.Input<String>? dynamicSchemaVersionName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<SchemaVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;

  /// Creates a new [DynamicSchemaVersionArgs].
  /// [dynamicSchemaName] The name of the DynamicSchema
  /// [dynamicSchemaVersionName] The name of the DynamicSchemaVersion
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  DynamicSchemaVersionArgs({
    required pulumi.Output<String> dynamicSchemaName,
    pulumi.Output<String>? dynamicSchemaVersionName,
    pulumi.Output<SchemaVersionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
  }) :
      dynamicSchemaName = pulumi.Input.asInput<String>(dynamicSchemaName),
      dynamicSchemaVersionName = pulumi.Input.asOptionalInput<String>(dynamicSchemaVersionName),
      properties = pulumi.Input.asOptionalInput<SchemaVersionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicSchemaName': dynamicSchemaName,
      'dynamicSchemaVersionName': ?dynamicSchemaVersionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SchemaVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
    };
  }

  factory DynamicSchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return DynamicSchemaVersionArgs(
      dynamicSchemaName: pulumi.Output.create<String>(map['dynamicSchemaName'] as String),
      dynamicSchemaVersionName: map['dynamicSchemaVersionName'] == null ? null : pulumi.Output.create<String>(map['dynamicSchemaVersionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SchemaVersionProperties>(SchemaVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
    );
  }
}

