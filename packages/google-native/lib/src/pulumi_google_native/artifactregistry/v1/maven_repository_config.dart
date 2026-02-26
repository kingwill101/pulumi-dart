// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_config_version_policy.dart';

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfig {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final bool? allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  final MavenRepositoryConfigVersionPolicy? versionPolicy;

  MavenRepositoryConfig({
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

  factory MavenRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfig(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null
          ? null
          : map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] == null
          ? null
          : MavenRepositoryConfigVersionPolicy.fromValue(
              map['versionPolicy'] as String),
    );
  }
}
