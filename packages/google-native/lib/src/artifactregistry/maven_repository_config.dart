// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_config_version_policy.dart';

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfig {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final bool? allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  final MavenRepositoryConfigVersionPolicy? versionPolicy;

  /// Creates a new [MavenRepositoryConfig].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same snapshot versions.
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  MavenRepositoryConfig({this.allowSnapshotOverwrites, this.versionPolicy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': ?allowSnapshotOverwrites,
      'versionPolicy': ?versionPolicy == null ? null : versionPolicy!.value,
    };
  }

  factory MavenRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfig(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null
          ? null
          : map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] == null
          ? null
          : MavenRepositoryConfigVersionPolicy.fromValue(
              map['versionPolicy'] as String,
            ),
    );
  }
}
