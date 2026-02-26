// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRateLimitOptionsRateLimitThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int? count;

  /// Interval over which the threshold is computed.
  final int? intervalSec;

  SecurityPolicyRuleRateLimitOptionsRateLimitThreshold({
    this.count,
    this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final intervalSecValue = intervalSec;
    if (intervalSecValue != null) {
      map['intervalSec'] = intervalSecValue;
    }
    return map;
  }

  factory SecurityPolicyRuleRateLimitOptionsRateLimitThreshold.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsRateLimitThreshold(
      count: map['count'] == null ? null : map['count'] as int,
      intervalSec:
          map['intervalSec'] == null ? null : map['intervalSec'] as int,
    );
  }
}
