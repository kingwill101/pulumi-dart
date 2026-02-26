// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPersistenceConfigAofConfig {
  /// Optional. Available fsync modes.
  ///
  /// - NO - Do not explicitly call fsync(). Rely on OS defaults.
  /// - EVERYSEC - Call fsync() once per second in a background thread. A balance between performance and durability.
  /// - ALWAYS - Call fsync() for earch write command. Possible values: ["APPEND_FSYNC_UNSPECIFIED", "NO", "EVERYSEC", "ALWAYS"]
  final String appendFsync;

  GetClusterPersistenceConfigAofConfig({
    required this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appendFsync'] = appendFsync;
    return map;
  }

  factory GetClusterPersistenceConfigAofConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterPersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] as String,
    );
  }
}
