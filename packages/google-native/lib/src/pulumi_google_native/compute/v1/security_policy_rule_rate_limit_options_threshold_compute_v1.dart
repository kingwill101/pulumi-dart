// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRateLimitOptionsThresholdComputeV1 {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int? count;

  /// Interval over which the threshold is computed.
  final int? intervalSec;

  SecurityPolicyRuleRateLimitOptionsThresholdComputeV1({
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

  factory SecurityPolicyRuleRateLimitOptionsThresholdComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsThresholdComputeV1(
      count: map['count'] == null ? null : map['count'] as int,
      intervalSec:
          map['intervalSec'] == null ? null : map['intervalSec'] as int,
    );
  }
}
