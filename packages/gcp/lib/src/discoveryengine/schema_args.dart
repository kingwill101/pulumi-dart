// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_schema_schema_args_doc}
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

  /// Creates a new [SchemaArgs].
  /// [dataStoreId] The unique id of the data store.
  /// [jsonSchema] The JSON representation of the schema.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [schemaId] The unique id of the schema.
  SchemaArgs({
    required String dataStoreId,
    String? jsonSchema,
    required String location,
    String? project,
    required String schemaId,
  })  : dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
        jsonSchema = pulumi.Input.asOptionalInput<String>(jsonSchema),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        schemaId = pulumi.Input.asInput<String>(schemaId);

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
      dataStoreId: map['dataStoreId'] as String,
      jsonSchema:
          map['jsonSchema'] == null ? null : map['jsonSchema'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schemaId: map['schemaId'] as String,
    );
  }
}
