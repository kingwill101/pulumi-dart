// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMavenArtifact.
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
      artifactId: pulumi.Input.asInput<String>(map['artifactId']),
      groupId: pulumi.Input.asInput<String>(map['groupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
