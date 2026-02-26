// ignore_for_file: unused_element, unnecessary_cast

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfigResponse2 {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final bool allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  final String versionPolicy;

  MavenRepositoryConfigResponse2({
    required this.allowSnapshotOverwrites,
    required this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowSnapshotOverwrites'] = allowSnapshotOverwrites;
    map['versionPolicy'] = versionPolicy;
    return map;
  }

  factory MavenRepositoryConfigResponse2.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfigResponse2(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] as String,
    );
  }
}
