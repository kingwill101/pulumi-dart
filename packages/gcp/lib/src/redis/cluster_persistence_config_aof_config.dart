// ignore_for_file: unused_element, unnecessary_cast

class ClusterPersistenceConfigAofConfig {
  /// Optional. Available fsync modes.
  /// - NO - Do not explicitly call fsync(). Rely on OS defaults.
  /// - EVERYSEC - Call fsync() once per second in a background thread. A balance between performance and durability.
  /// - ALWAYS - Call fsync() for earch write command.
  /// Possible values are: `APPEND_FSYNC_UNSPECIFIED`, `NO`, `EVERYSEC`, `ALWAYS`.
  final String? appendFsync;

  /// Creates a new [ClusterPersistenceConfigAofConfig].
  /// [appendFsync] Optional. Available fsync modes.
  ClusterPersistenceConfigAofConfig({this.appendFsync});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appendFsync': ?appendFsync};
  }

  factory ClusterPersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] == null
          ? null
          : map['appendFsync'] as String,
    );
  }
}
