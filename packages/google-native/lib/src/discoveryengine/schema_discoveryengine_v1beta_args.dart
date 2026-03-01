// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_schema_discoveryengine_v1beta_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_schema_discoveryengine_v1beta_args_doc}
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

  /// Creates a new [SchemaDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [jsonSchema] The JSON representation of the schema.
  /// [location] Optional.
  /// [name] Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [project] Optional.
  /// [schemaId] Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  /// [structSchema] The structured representation of the schema.
  SchemaDiscoveryengineV1betaArgs({
    required String collectionId,
    required String dataStoreId,
    String? jsonSchema,
    String? location,
    String? name,
    String? project,
    required String schemaId,
    Map<String, String>? structSchema,
  }) : collectionId = pulumi.Input.asInput<String>(collectionId),
       dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
       jsonSchema = pulumi.Input.asOptionalInput<String>(jsonSchema),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       schemaId = pulumi.Input.asInput<String>(schemaId),
       structSchema = pulumi.Input.asOptionalInput<Map<String, String>>(
         structSchema,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'jsonSchema': ?jsonSchema,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'schemaId': schemaId,
      'structSchema': ?structSchema,
    };
  }

  factory SchemaDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaDiscoveryengineV1betaArgs(
      collectionId: map['collectionId'] as String,
      dataStoreId: map['dataStoreId'] as String,
      jsonSchema: map['jsonSchema'] == null
          ? null
          : map['jsonSchema'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schemaId: map['schemaId'] as String,
      structSchema: map['structSchema'] == null
          ? null
          : (map['structSchema'] as Map).cast<String, String>(),
    );
  }
}
