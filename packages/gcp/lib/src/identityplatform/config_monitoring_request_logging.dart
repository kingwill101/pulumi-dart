// ignore_for_file: unused_element, unnecessary_cast


class ConfigMonitoringRequestLogging {
  /// Whether logging is enabled for this project or not.
  final bool? enabled;

  /// Creates a new [ConfigMonitoringRequestLogging].
  /// [enabled] Whether logging is enabled for this project or not.
  ConfigMonitoringRequestLogging({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigMonitoringRequestLogging.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoringRequestLogging(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

