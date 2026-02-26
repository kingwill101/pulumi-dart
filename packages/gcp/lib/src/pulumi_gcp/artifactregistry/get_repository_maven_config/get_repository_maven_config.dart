// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryMavenConfig {
  /// The repository with this flag will allow publishing the same
  /// snapshot versions.
  final bool allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept. Default value: "VERSION_POLICY_UNSPECIFIED" Possible values: ["VERSION_POLICY_UNSPECIFIED", "RELEASE", "SNAPSHOT"]
  final String versionPolicy;

  GetRepositoryMavenConfig({
    required this.allowSnapshotOverwrites,
    required this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowSnapshotOverwrites'] = allowSnapshotOverwrites;
    map['versionPolicy'] = versionPolicy;
    return map;
  }

  factory GetRepositoryMavenConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryMavenConfig(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] as String,
    );
  }
}
