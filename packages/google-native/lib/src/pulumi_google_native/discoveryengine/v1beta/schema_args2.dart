// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Schema.
class SchemaArgs2 {
  final Input<String> collectionId;
  final Input<String> dataStoreId;

  /// The JSON representation of the schema.
  final Input<String>? jsonSchema;
  final Input<String>? location;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final Input<String> schemaId;

  /// The structured representation of the schema.
  final Input<Map<String, String>>? structSchema;

  SchemaArgs2({
    required this.collectionId,
    required this.dataStoreId,
    this.jsonSchema,
    this.location,
    this.name,
    this.project,
    required this.schemaId,
    this.structSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    map['dataStoreId'] = dataStoreId;
    final jsonSchemaValue = jsonSchema;
    if (jsonSchemaValue != null) {
      map['jsonSchema'] = jsonSchemaValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schemaId'] = schemaId;
    final structSchemaValue = structSchema;
    if (structSchemaValue != null) {
      map['structSchema'] = structSchemaValue;
    }
    return map;
  }

  factory SchemaArgs2.fromMap(Map<String, dynamic> map) {
    return SchemaArgs2(
      collectionId: Input.asInput<String>(map['collectionId']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      jsonSchema: Input.asOptionalInput<String>(map['jsonSchema']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      schemaId: Input.asInput<String>(map['schemaId']),
      structSchema:
          Input.asOptionalInput<Map<String, String>>(map['structSchema']),
    );
  }
}
