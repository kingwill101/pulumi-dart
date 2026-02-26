// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMavenArtifact.
class GetMavenArtifactArgs {
  /// The name of the artifact to fetch. Can optionally include a specific version (e.g., `my_artifact:1.2.3`). If no version is provided, the latest version is used.
  final Input<String> artifactId;

  /// Group ID for the artifact. Example: `com.google.guava`
  final Input<String> groupId;

  /// The location of the Artifact Registry repository.
  final Input<String> location;

  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final Input<String>? project;

  /// The ID of the repository containing the Maven artifact.
  final Input<String> repositoryId;

  GetMavenArtifactArgs({
    required this.artifactId,
    required this.groupId,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactId'] = artifactId;
    map['groupId'] = groupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetMavenArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactArgs(
      artifactId: Input.asInput<String>(map['artifactId']),
      groupId: Input.asInput<String>(map['groupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
    );
  }
}
