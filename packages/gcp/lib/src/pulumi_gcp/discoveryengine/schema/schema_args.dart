// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Schema.
class SchemaArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;

  /// The JSON representation of the schema.
  final pulumi.Input<String>? jsonSchema;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The unique id of the schema.
  final pulumi.Input<String> schemaId;

  SchemaArgs({
    required this.dataStoreId,
    this.jsonSchema,
    required this.location,
    this.project,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreId'] = dataStoreId;
    final jsonSchemaValue = jsonSchema;
    if (jsonSchemaValue != null) {
      map['jsonSchema'] = jsonSchemaValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['schemaId'] = schemaId;
    return map;
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      jsonSchema: pulumi.Input.asOptionalInput<String>(map['jsonSchema']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asInput<String>(map['schemaId']),
    );
  }
}
