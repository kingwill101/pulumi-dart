// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_maven_artifacts_maven_artifact/get_maven_artifacts_maven_artifact.dart';

/// Result data returned by getMavenArtifacts.
class GetMavenArtifactsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// A list of all retrieved Artifact Registry Maven artifacts. Structure is defined below.
  final List<GetMavenArtifactsMavenArtifact> mavenArtifacts;
  final String? project;
  final String repositoryId;

  GetMavenArtifactsResult({
    required this.id,
    required this.location,
    required this.mavenArtifacts,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    map['mavenArtifacts'] =
        Input.encodeList<GetMavenArtifactsMavenArtifact, Map<String, dynamic>>(
            mavenArtifacts, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetMavenArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      mavenArtifacts: Input.decodeList<GetMavenArtifactsMavenArtifact>(
          map['mavenArtifacts'],
          (value) => GetMavenArtifactsMavenArtifact.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}
