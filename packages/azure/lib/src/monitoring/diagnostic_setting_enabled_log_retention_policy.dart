// ignore_for_file: unused_element, unnecessary_cast


class DiagnosticSettingEnabledLogRetentionPolicy {
  final int? days;
  final bool enabled;

  /// Creates a new [DiagnosticSettingEnabledLogRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Required.
  DiagnosticSettingEnabledLogRetentionPolicy({
    this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': enabled,
    };
  }

  factory DiagnosticSettingEnabledLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingEnabledLogRetentionPolicy(
      days: map['days'] == null ? null : map['days'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

