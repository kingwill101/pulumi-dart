// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_schema_args_doc}
class GetSchemaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;

  /// Creates a new [GetSchemaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [schemaId] Required.
  GetSchemaArgs({
    required String collectionId,
    required String dataStoreId,
    required String location,
    String? project,
    required String schemaId,
  }) : collectionId = pulumi.Input.asInput<String>(collectionId),
       dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       schemaId = pulumi.Input.asInput<String>(schemaId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
      'schemaId': schemaId,
    };
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      collectionId: map['collectionId'] as String,
      dataStoreId: map['dataStoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      schemaId: map['schemaId'] as String,
    );
  }
}
