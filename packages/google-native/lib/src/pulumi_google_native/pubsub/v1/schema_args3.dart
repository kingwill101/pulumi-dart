// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'schema_type.dart';

/// The set of arguments for Schema.
class SchemaArgs3 {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final Input<String>? definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final Input<String>? name;
  final Input<String>? project;

  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  final Input<String>? schemaId;

  /// The type of the schema definition.
  final Input<SchemaType>? type;

  SchemaArgs3({
    this.definition,
    this.name,
    this.project,
    this.schemaId,
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
    final schemaIdValue = schemaId;
    if (schemaIdValue != null) {
      map['schemaId'] = schemaIdValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<SchemaType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory SchemaArgs3.fromMap(Map<String, dynamic> map) {
    return SchemaArgs3(
      definition: Input.asOptionalInput<String>(map['definition']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      schemaId: Input.asOptionalInput<String>(map['schemaId']),
      type: Input.asOptionalInput<SchemaType>(map['type']),
    );
  }
}
