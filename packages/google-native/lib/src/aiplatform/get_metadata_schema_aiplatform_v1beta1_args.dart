// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
/// Arguments for getMetadataSchema.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_metadata_schema_aiplatform_v1beta1_args_doc}
class GetMetadataSchemaAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataSchemaId;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetadataSchemaAiplatformV1beta1Args].
  /// [location] Required.
  /// [metadataSchemaId] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetMetadataSchemaAiplatformV1beta1Args({
    required String location,
    required String metadataSchemaId,
    required String metadataStoreId,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
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

  factory GetMetadataSchemaAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMetadataSchemaAiplatformV1beta1Args(
      location: map['location'] as String,
      metadataSchemaId: map['metadataSchemaId'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

