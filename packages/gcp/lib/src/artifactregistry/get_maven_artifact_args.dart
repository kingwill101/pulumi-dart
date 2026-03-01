// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_maven_artifact_get_maven_artifact_args_doc}
/// Arguments for getMavenArtifact.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_maven_artifact_get_maven_artifact_args_doc}
class GetMavenArtifactArgs {
  /// The name of the artifact to fetch. Can optionally include a specific version (e.g., `my_artifact:1.2.3`). If no version is provided, the latest version is used.
  final pulumi.Input<String> artifactId;
  /// Group ID for the artifact. Example: `com.google.guava`
  final pulumi.Input<String> groupId;
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final pulumi.Input<String>? project;
  /// The ID of the repository containing the Maven artifact.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetMavenArtifactArgs].
  /// [artifactId] The name of the artifact to fetch. Can optionally include a specific version (e.g., `my_artifact:1.2.3`). If no version is provided, the latest version is used.
  /// [groupId] Group ID for the artifact. Example: `com.google.guava`
  /// [location] The location of the Artifact Registry repository.
  /// [project] The ID of the project that owns the repository. If not provided, the provider-level project is used.
  /// [repositoryId] The ID of the repository containing the Maven artifact.
  GetMavenArtifactArgs({
    required String artifactId,
    required String groupId,
    required String location,
    String? project,
    required String repositoryId,
  }) :
      artifactId = pulumi.Input.asInput<String>(artifactId),
      groupId = pulumi.Input.asInput<String>(groupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'groupId': groupId,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetMavenArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactArgs(
      artifactId: map['artifactId'] as String,
      groupId: map['groupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}

