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
  const DynamicSchemaVersionArgs({
    required this.dynamicSchemaName,
    this.dynamicSchemaVersionName,
    this.properties,
    required this.resourceGroupName,
    required this.schemaName,
  });

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
      dynamicSchemaName: pulumi.Input.fromValue(map['dynamicSchemaName'] as String),
      dynamicSchemaVersionName: (() { final guardedValue = map['dynamicSchemaVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaVersionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
    );
  }
}

