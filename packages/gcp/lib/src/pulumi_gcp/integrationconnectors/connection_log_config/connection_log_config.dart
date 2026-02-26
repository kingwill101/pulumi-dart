// ignore_for_file: unused_element, unnecessary_cast

class ConnectionLogConfig {
  /// Enabled represents whether logging is enabled or not for a connection.
  final bool enabled;

  /// Log configuration level.
  /// Possible values are: `LOG_LEVEL_UNSPECIFIED`, `ERROR`, `INFO`, `DEBUG`.
  final String? level;

  ConnectionLogConfig({
    required this.enabled,
    this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue;
    }
    return map;
  }

  factory ConnectionLogConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionLogConfig(
      enabled: map['enabled'] as bool,
      level: map['level'] == null ? null : map['level'] as String,
    );
  }
}
