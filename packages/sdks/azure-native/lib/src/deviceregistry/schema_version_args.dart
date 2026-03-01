// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_schema_version_args_doc}
/// The set of arguments for SchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_schema_version_args_doc}
class SchemaVersionArgs {
  /// Human-readable description of the schema.
  final pulumi.Input<String>? description;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema content.
  final pulumi.Input<String> schemaContent;
  /// Schema name parameter.
  final pulumi.Input<String> schemaName;
  /// Schema registry name parameter.
  final pulumi.Input<String> schemaRegistryName;
  /// Schema version name parameter.
  final pulumi.Input<String>? schemaVersionName;

  /// Creates a new [SchemaVersionArgs].
  /// [description] Human-readable description of the schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaContent] Schema content.
  /// [schemaName] Schema name parameter.
  /// [schemaRegistryName] Schema registry name parameter.
  /// [schemaVersionName] Schema version name parameter.
  SchemaVersionArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaContent,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> schemaRegistryName,
    pulumi.Output<String>? schemaVersionName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaContent = pulumi.Input.asInput<String>(schemaContent),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      schemaRegistryName = pulumi.Input.asInput<String>(schemaRegistryName),
      schemaVersionName = pulumi.Input.asOptionalInput<String>(schemaVersionName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaContent: pulumi.Output.create<String>(map['schemaContent'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      schemaRegistryName: pulumi.Output.create<String>(map['schemaRegistryName'] as String),
      schemaVersionName: map['schemaVersionName'] == null ? null : pulumi.Output.create<String>(map['schemaVersionName'] as String),
    );
  }
}

