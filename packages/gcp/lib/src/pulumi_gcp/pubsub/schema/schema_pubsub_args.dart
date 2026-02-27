// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schema.
class SchemaPubsubArgs {
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

  SchemaPubsubArgs({
    this.definition,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final definitionValue = definition;
    if (definitionValue != null) {
      map['definition'] = definitionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory SchemaPubsubArgs.fromMap(Map<String, dynamic> map) {
    return SchemaPubsubArgs(
      definition: pulumi.Input.asOptionalInput<String>(map['definition']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
