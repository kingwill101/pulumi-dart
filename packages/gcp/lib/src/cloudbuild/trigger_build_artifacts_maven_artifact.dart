// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildArtifactsMavenArtifact {
  /// Maven artifactId value used when uploading the artifact to Artifact Registry.
  final String? artifactId;

  /// Maven groupId value used when uploading the artifact to Artifact Registry.
  final String? groupId;

  /// Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  final String? path;

  /// Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY"
  /// Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
  final String? repository;

  /// Maven version value used when uploading the artifact to Artifact Registry.
  final String? version;

  /// Creates a new [TriggerBuildArtifactsMavenArtifact].
  /// [artifactId] Maven artifactId value used when uploading the artifact to Artifact Registry.
  /// [groupId] Maven groupId value used when uploading the artifact to Artifact Registry.
  /// [path] Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  /// [repository] Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY"
  /// [version] Maven version value used when uploading the artifact to Artifact Registry.
  TriggerBuildArtifactsMavenArtifact({
    this.artifactId,
    this.groupId,
    this.path,
    this.repository,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final artifactIdValue = artifactId;
    if (artifactIdValue != null) {
      map['artifactId'] = artifactIdValue;
    }
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory TriggerBuildArtifactsMavenArtifact.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifactsMavenArtifact(
      artifactId:
          map['artifactId'] == null ? null : map['artifactId'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      repository:
          map['repository'] == null ? null : map['repository'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
