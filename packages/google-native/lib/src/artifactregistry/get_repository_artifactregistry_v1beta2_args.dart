// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
class GetRepositoryArtifactregistryV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArtifactregistryV1beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetRepositoryArtifactregistryV1beta2Args({
    required String location,
    String? project,
    required String repositoryId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetRepositoryArtifactregistryV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryArtifactregistryV1beta2Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
