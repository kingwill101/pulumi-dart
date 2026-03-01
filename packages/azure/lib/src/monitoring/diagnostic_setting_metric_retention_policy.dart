// ignore_for_file: unused_element, unnecessary_cast


class DiagnosticSettingMetricRetentionPolicy {
  final int? days;
  final bool enabled;

  /// Creates a new [DiagnosticSettingMetricRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Required.
  DiagnosticSettingMetricRetentionPolicy({
    this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
    };
  }

  factory DiagnosticSettingMetricRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingMetricRetentionPolicy(
      days: map['days'] == null ? null : map['days'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

