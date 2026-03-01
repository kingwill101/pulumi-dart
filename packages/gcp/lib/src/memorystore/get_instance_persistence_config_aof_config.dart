// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final String appendFsync;

  /// Creates a new [GetInstancePersistenceConfigAofConfig].
  /// [appendFsync] Optional. The fsync mode.
  GetInstancePersistenceConfigAofConfig({required this.appendFsync});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appendFsync': appendFsync};
  }

  factory GetInstancePersistenceConfigAofConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstancePersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] as String,
    );
  }
}
