// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_metadata_schema_args_doc}
/// Arguments for getMetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_metadata_schema_args_doc}
class GetMetadataSchemaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataSchemaId;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataSchemaArgs].
  /// [location] Required.
  /// [metadataSchemaId] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataSchemaArgs({
    required String location,
    required String metadataSchemaId,
    required String metadataStoreId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       metadataSchemaId = pulumi.Input.asInput<String>(metadataSchemaId),
       metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'metadataSchemaId': metadataSchemaId,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetMetadataSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaArgs(
      location: map['location'] as String,
      metadataSchemaId: map['metadataSchemaId'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
