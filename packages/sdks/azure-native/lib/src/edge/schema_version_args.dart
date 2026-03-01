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
  SchemaVersionArgs({
    pulumi.Output<SchemaVersionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    pulumi.Output<String>? schemaVersionName,
  }) :
      properties = pulumi.Input.asOptionalInput<SchemaVersionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      schemaVersionName = pulumi.Input.asOptionalInput<String>(schemaVersionName);

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
      properties: map['properties'] == null ? null : pulumi.Output.create<SchemaVersionProperties>(SchemaVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      schemaVersionName: map['schemaVersionName'] == null ? null : pulumi.Output.create<String>(map['schemaVersionName'] as String),
    );
  }
}

