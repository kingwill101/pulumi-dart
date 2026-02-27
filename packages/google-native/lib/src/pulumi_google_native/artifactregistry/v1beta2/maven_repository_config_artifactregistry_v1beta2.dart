// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_config_version_policy_artifactregistry_v1beta2.dart';

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfigArtifactregistryV1beta2 {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final bool? allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  final MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2?
      versionPolicy;

  MavenRepositoryConfigArtifactregistryV1beta2({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowSnapshotOverwritesValue = allowSnapshotOverwrites;
    if (allowSnapshotOverwritesValue != null) {
      map['allowSnapshotOverwrites'] = allowSnapshotOverwritesValue;
    }
    final versionPolicyValue = versionPolicy;
    if (versionPolicyValue != null) {
      map['versionPolicy'] = versionPolicyValue.value;
    }
    return map;
  }

  factory MavenRepositoryConfigArtifactregistryV1beta2.fromMap(
      Map<String, dynamic> map) {
    return MavenRepositoryConfigArtifactregistryV1beta2(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null
          ? null
          : map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] == null
          ? null
          : MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2.fromValue(
              map['versionPolicy'] as String),
    );
  }
}
