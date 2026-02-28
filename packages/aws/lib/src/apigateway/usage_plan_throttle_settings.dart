// ignore_for_file: unused_element, unnecessary_cast


class UsagePlanThrottleSettings {
  final int? burstLimit;
  final double? rateLimit;

  /// Creates a new [UsagePlanThrottleSettings].
  /// [burstLimit] Optional.
  /// [rateLimit] Optional.
  UsagePlanThrottleSettings({
    this.burstLimit,
    this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstLimit': ?burstLimit,
      'rateLimit': ?rateLimit,
    };
  }

  factory UsagePlanThrottleSettings.fromMap(Map<String, dynamic> map) {
    return UsagePlanThrottleSettings(
      burstLimit: map['burstLimit'] == null ? null : map['burstLimit'] as int,
      rateLimit: map['rateLimit'] == null ? null : map['rateLimit'] as double,
    );
  }
}

