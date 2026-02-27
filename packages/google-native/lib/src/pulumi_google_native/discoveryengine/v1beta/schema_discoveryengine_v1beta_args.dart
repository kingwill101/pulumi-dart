// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schema.
class SchemaDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;

  /// The JSON representation of the schema.
  final pulumi.Input<String>? jsonSchema;
  final pulumi.Input<String>? location;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String> schemaId;

  /// The structured representation of the schema.
  final pulumi.Input<Map<String, String>>? structSchema;

  SchemaDiscoveryengineV1betaArgs({
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

  factory SchemaDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaDiscoveryengineV1betaArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      jsonSchema: pulumi.Input.asOptionalInput<String>(map['jsonSchema']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asInput<String>(map['schemaId']),
      structSchema: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['structSchema']),
    );
  }
}
