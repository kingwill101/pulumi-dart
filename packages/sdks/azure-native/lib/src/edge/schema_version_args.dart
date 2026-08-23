// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_properties.dart';

/// {@template pulumi_edge_schema_version_args_doc}
/// The set of arguments for SchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_schema_version_args_doc}
class SchemaVersionArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<SchemaVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Schema
  final pulumi.Input<String> schemaName;
  /// The name of the SchemaVersion
  final pulumi.Input<String>? schemaVersionName;

  /// Creates a new [SchemaVersionArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the Schema
  /// [schemaVersionName] The name of the SchemaVersion
  const SchemaVersionArgs({
    this.properties,
    required this.resourceGroupName,
    required this.schemaName,
    this.schemaVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<SchemaVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'schemaVersionName': ?schemaVersionName,
    };
  }

  factory SchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return SchemaVersionArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaVersionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      schemaVersionName: (() { final guardedValue = map['schemaVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
