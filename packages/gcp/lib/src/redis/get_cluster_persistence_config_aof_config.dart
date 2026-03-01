// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPersistenceConfigAofConfig {
  /// Optional. Available fsync modes.
  ///
  /// - NO - Do not explicitly call fsync(). Rely on OS defaults.
  /// - EVERYSEC - Call fsync() once per second in a background thread. A balance between performance and durability.
  /// - ALWAYS - Call fsync() for earch write command. Possible values: ["APPEND_FSYNC_UNSPECIFIED", "NO", "EVERYSEC", "ALWAYS"]
  final String appendFsync;

  /// Creates a new [GetClusterPersistenceConfigAofConfig].
  /// [appendFsync] Optional. Available fsync modes.
  GetClusterPersistenceConfigAofConfig({required this.appendFsync});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appendFsync': appendFsync};
  }

  factory GetClusterPersistenceConfigAofConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterPersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] as String,
    );
  }
}
