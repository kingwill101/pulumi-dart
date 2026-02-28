// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_artifact_args_doc}
/// Arguments for getArtifact.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_artifact_args_doc}
class GetArtifactArgs {
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetArtifactArgs].
  /// [artifactId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetArtifactArgs({
    required String artifactId,
    required String location,
    required String metadataStoreId,
    String? project,
  }) :
      artifactId = pulumi.Input.asInput<String>(artifactId),
      location = pulumi.Input.asInput<String>(location),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactArgs(
      artifactId: map['artifactId'] as String,
      location: map['location'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

