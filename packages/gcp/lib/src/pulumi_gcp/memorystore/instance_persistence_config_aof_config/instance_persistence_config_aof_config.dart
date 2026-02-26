// ignore_for_file: unused_element, unnecessary_cast

class InstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final String? appendFsync;

  InstancePersistenceConfigAofConfig({
    this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appendFsyncValue = appendFsync;
    if (appendFsyncValue != null) {
      map['appendFsync'] = appendFsyncValue;
    }
    return map;
  }

  factory InstancePersistenceConfigAofConfig.fromMap(Map<String, dynamic> map) {
    return InstancePersistenceConfigAofConfig(
      appendFsync:
          map['appendFsync'] == null ? null : map['appendFsync'] as String,
    );
  }
}
