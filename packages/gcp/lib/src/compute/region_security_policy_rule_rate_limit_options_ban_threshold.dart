// ignore_for_file: unused_element, unnecessary_cast

class RegionSecurityPolicyRuleRateLimitOptionsBanThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int? count;

  /// Interval over which the threshold is computed.
  final int? intervalSec;

  /// Creates a new [RegionSecurityPolicyRuleRateLimitOptionsBanThreshold].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  RegionSecurityPolicyRuleRateLimitOptionsBanThreshold({
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

  factory RegionSecurityPolicyRuleRateLimitOptionsBanThreshold.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleRateLimitOptionsBanThreshold(
      count: map['count'] == null ? null : map['count'] as int,
      intervalSec:
          map['intervalSec'] == null ? null : map['intervalSec'] as int,
    );
  }
}
