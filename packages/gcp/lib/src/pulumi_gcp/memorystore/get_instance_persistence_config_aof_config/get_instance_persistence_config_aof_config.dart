// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePersistenceConfigAofConfig {
  /// Optional. The fsync mode.
  /// Possible values:
  /// NEVER
  /// EVERY_SEC
  /// ALWAYS
  final String appendFsync;

  GetInstancePersistenceConfigAofConfig({
    required this.appendFsync,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appendFsync'] = appendFsync;
    return map;
  }

  factory GetInstancePersistenceConfigAofConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstancePersistenceConfigAofConfig(
      appendFsync: map['appendFsync'] as String,
    );
  }
}
