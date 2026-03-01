// ignore_for_file: unused_element, unnecessary_cast


/// Auto-pausing properties of a Big Data pool powered by Apache Spark
class AutoPausePropertiesResponse {
  /// Number of minutes of idle time before the Big Data pool is automatically paused.
  final int? delayInMinutes;
  /// Whether auto-pausing is enabled for the Big Data pool.
  final bool? enabled;

  /// Creates a new [AutoPausePropertiesResponse].
  /// [delayInMinutes] Number of minutes of idle time before the Big Data pool is automatically paused.
  /// [enabled] Whether auto-pausing is enabled for the Big Data pool.
  AutoPausePropertiesResponse({
    this.delayInMinutes,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': ?delayInMinutes,
      'enabled': ?enabled,
    };
  }

  factory AutoPausePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutoPausePropertiesResponse(
      delayInMinutes: map['delayInMinutes'] == null ? null : map['delayInMinutes'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

