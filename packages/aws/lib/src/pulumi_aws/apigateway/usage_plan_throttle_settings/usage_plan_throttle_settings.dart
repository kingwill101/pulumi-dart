// ignore_for_file: unused_element, unnecessary_cast

class UsagePlanThrottleSettings {
  final int? burstLimit;
  final double? rateLimit;

  UsagePlanThrottleSettings({
    this.burstLimit,
    this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final burstLimitValue = burstLimit;
    if (burstLimitValue != null) {
      map['burstLimit'] = burstLimitValue;
    }
    final rateLimitValue = rateLimit;
    if (rateLimitValue != null) {
      map['rateLimit'] = rateLimitValue;
    }
    return map;
  }

  factory UsagePlanThrottleSettings.fromMap(Map<String, dynamic> map) {
    return UsagePlanThrottleSettings(
      burstLimit: map['burstLimit'] == null ? null : map['burstLimit'] as int,
      rateLimit: map['rateLimit'] == null ? null : map['rateLimit'] as double,
    );
  }
}
