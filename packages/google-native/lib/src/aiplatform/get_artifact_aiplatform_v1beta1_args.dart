// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
/// Arguments for getArtifact.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_artifact_aiplatform_v1beta1_args_doc}
class GetArtifactAiplatformV1beta1Args {
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetArtifactAiplatformV1beta1Args].
  /// [artifactId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetArtifactAiplatformV1beta1Args({
    required String artifactId,
    required String location,
    required String metadataStoreId,
    String? project,
  })  : artifactId = pulumi.Input.asInput<String>(artifactId),
        location = pulumi.Input.asInput<String>(location),
        metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetArtifactAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetArtifactAiplatformV1beta1Args(
      artifactId: map['artifactId'] as String,
      location: map['location'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
