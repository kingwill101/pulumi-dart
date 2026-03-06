// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_schema_args_doc}
class SchemaArgs {
  /// Human-readable description of the schema.
  final pulumi.Input<String>? description;
  /// Human-readable display name.
  final pulumi.Input<String>? displayName;
  /// Format of the schema.
  final pulumi.Input<String> format;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema name parameter.
  final pulumi.Input<String>? schemaName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;
  /// Type of the schema.
  final pulumi.Input<String> schemaType;
  /// Schema tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchemaArgs].
  /// [description] Human-readable description of the schema.
  /// [displayName] Human-readable display name.
  /// [format] Format of the schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] Schema name parameter.
  /// [schemaRegistryName] Schema registry name parameter.
  /// [schemaType] Type of the schema.
  /// [tags] Schema tags.
  const SchemaArgs({
    this.description,
    this.displayName,
    required this.format,
    required this.resourceGroupName,
    this.schemaName,
    required this.schemaRegistryName,
    required this.schemaType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'format': format,
      'resourceGroupName': resourceGroupName,
      'schemaName': ?schemaName,
      'schemaRegistryName': schemaRegistryName,
      'schemaType': schemaType,
      'tags': ?tags,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: (() { final guardedValue = map['schemaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaRegistryName: pulumi.Input.fromValue(map['schemaRegistryName'] as String),
      schemaType: pulumi.Input.fromValue(map['schemaType'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

