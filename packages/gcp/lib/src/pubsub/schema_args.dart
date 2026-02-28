// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_pubsub_schema_schema_args_doc}
class SchemaArgs {
  /// The definition of the schema.
  /// This should contain a string representing the full definition of the schema
  /// that is a valid schema definition of the type specified in type. Changes
  /// to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
  /// A schema can only have up to 20 revisions, so updates that fail with an
  /// error indicating that the limit has been reached require manually
  /// [deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision).
  final pulumi.Input<String>? definition;
  /// The ID to use for the schema, which will become the final component of the schema's resource name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of the schema definition
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `PROTOCOL_BUFFER`, `AVRO`.
  final pulumi.Input<String>? type;

  /// Creates a new [SchemaArgs].
  /// [definition] The definition of the schema.
  /// [name] The ID to use for the schema, which will become the final component of the schema's resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the schema definition
  SchemaArgs({
    String? definition,
    String? name,
    String? project,
    String? type,
  }) :
      definition = pulumi.Input.asOptionalInput<String>(definition),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'name': ?name,
      'project': ?project,
      'type': ?type,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      definition: map['definition'] == null ? null : map['definition'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

