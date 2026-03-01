// ignore_for_file: unused_element, unnecessary_cast


class AadDiagnosticSettingEnabledLogRetentionPolicy {
  final int? days;
  final bool? enabled;

  /// Creates a new [AadDiagnosticSettingEnabledLogRetentionPolicy].
  /// [days] Optional.
  /// [enabled] Optional.
  AadDiagnosticSettingEnabledLogRetentionPolicy({
    this.days,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'enabled': ?enabled,
    };
  }

  factory AadDiagnosticSettingEnabledLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AadDiagnosticSettingEnabledLogRetentionPolicy(
      days: map['days'] == null ? null : map['days'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

