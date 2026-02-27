// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_type.dart';

/// The set of arguments for Schema.
class SchemaPubsubV1Args {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final pulumi.Input<String>? definition;

  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  final pulumi.Input<String>? schemaId;

  /// The type of the schema definition.
  final pulumi.Input<SchemaType>? type;

  SchemaPubsubV1Args({
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
      map['type'] = pulumi.Input.mapOptionalInputValue<SchemaType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory SchemaPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return SchemaPubsubV1Args(
      definition: pulumi.Input.asOptionalInput<String>(map['definition']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asOptionalInput<String>(map['schemaId']),
      type: pulumi.Input.asOptionalInput<SchemaType>(map['type']),
    );
  }
}
