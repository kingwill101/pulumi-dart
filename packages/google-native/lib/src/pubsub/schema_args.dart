// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_type.dart';

/// {@template pulumi_pubsub_v1_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_schema_args_doc}
class SchemaArgs {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final pulumi.Input<String>? definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  final pulumi.Input<String>? schemaId;

  /// The type of the schema definition.
  final pulumi.Input<SchemaType>? type;

  /// Creates a new [SchemaArgs].
  /// [definition] The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  /// [name] Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  /// [project] Optional.
  /// [schemaId] The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  /// [type] The type of the schema definition.
  SchemaArgs({
    String? definition,
    String? name,
    String? project,
    String? schemaId,
    SchemaType? type,
  })  : definition = pulumi.Input.asOptionalInput<String>(definition),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        schemaId = pulumi.Input.asOptionalInput<String>(schemaId),
        type = pulumi.Input.asOptionalInput<SchemaType>(type);

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
    final schemaIdValue = schemaId;
    if (schemaIdValue != null) {
      map['schemaId'] = schemaIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<SchemaType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      definition:
          map['definition'] == null ? null : map['definition'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schemaId: map['schemaId'] == null ? null : map['schemaId'] as String,
      type: map['type'] == null
          ? null
          : SchemaType.fromValue(map['type'] as String),
    );
  }
}
