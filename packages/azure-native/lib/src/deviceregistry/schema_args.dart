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
  SchemaArgs({
    String? description,
    String? displayName,
    required String format,
    required String resourceGroupName,
    String? schemaName,
    required String schemaRegistryName,
    required String schemaType,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      format = pulumi.Input.asInput<String>(format),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asOptionalInput<String>(schemaName),
      schemaRegistryName = pulumi.Input.asInput<String>(schemaRegistryName),
      schemaType = pulumi.Input.asInput<String>(schemaType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      format: map['format'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      schemaName: map['schemaName'] == null ? null : map['schemaName'] as String,
      schemaRegistryName: map['schemaRegistryName'] as String,
      schemaType: map['schemaType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

