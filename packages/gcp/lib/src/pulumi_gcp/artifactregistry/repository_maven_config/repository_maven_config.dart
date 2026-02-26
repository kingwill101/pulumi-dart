// ignore_for_file: unused_element, unnecessary_cast

class RepositoryMavenConfig {
  /// The repository with this flag will allow publishing the same
  /// snapshot versions.
  final bool? allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  /// Default value is `VERSION_POLICY_UNSPECIFIED`.
  /// Possible values are: `VERSION_POLICY_UNSPECIFIED`, `RELEASE`, `SNAPSHOT`.
  final String? versionPolicy;

  RepositoryMavenConfig({
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
      map['versionPolicy'] = versionPolicyValue;
    }
    return map;
  }

  factory RepositoryMavenConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryMavenConfig(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null
          ? null
          : map['allowSnapshotOverwrites'] as bool,
      versionPolicy:
          map['versionPolicy'] == null ? null : map['versionPolicy'] as String,
    );
  }
}
