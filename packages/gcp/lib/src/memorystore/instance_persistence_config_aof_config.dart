// ignore_for_file: unused_element, unnecessary_cast

class InstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final String? appendFsync;

  /// Creates a new [InstancePersistenceConfigAofConfig].
  /// [appendFsync] Optional. The fsync mode.
  InstancePersistenceConfigAofConfig({this.appendFsync});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appendFsync': ?appendFsync};
  }

  factory InstancePersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] == null
          ? null
          : map['appendFsync'] as String,
    );
  }
}
