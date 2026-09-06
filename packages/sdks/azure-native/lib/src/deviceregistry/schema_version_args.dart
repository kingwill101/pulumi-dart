// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_schema_version_args_doc}
/// The set of arguments for SchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_schema_version_args_doc}
class SchemaVersionArgs {
  /// Human-readable description of the schema.
  final pulumi.Input<String?>? description;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema content.
  final pulumi.Input<String> schemaContent;
  /// Schema name parameter.
  final pulumi.Input<String> schemaName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;
  /// Schema version name parameter.
  final pulumi.Input<String?>? schemaVersionName;

  /// Creates a new [SchemaVersionArgs].
  /// [description] Human-readable description of the schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaContent] Schema content.
  /// [schemaName] Schema name parameter.
  /// [schemaRegistryName] Schema registry name parameter.
  /// [schemaVersionName] Schema version name parameter.
  const SchemaVersionArgs({
    this.description,
    required this.resourceGroupName,
    required this.schemaContent,
    required this.schemaName,
    required this.schemaRegistryName,
    this.schemaVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'schemaContent': schemaContent,
      'schemaName': schemaName,
      'schemaRegistryName': schemaRegistryName,
      'schemaVersionName': ?schemaVersionName,
    };
  }

  factory SchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return SchemaVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaContent: pulumi.Input.fromValue(map['schemaContent'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      schemaRegistryName: pulumi.Input.fromValue(map['schemaRegistryName'] as String),
      schemaVersionName: (() { final guardedValue = map['schemaVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
