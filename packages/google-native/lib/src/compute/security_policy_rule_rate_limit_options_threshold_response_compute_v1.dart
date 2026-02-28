// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1 {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int count;

  /// Interval over which the threshold is computed.
  final int intervalSec;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['intervalSec'] = intervalSec;
    return map;
  }

  factory SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1(
      count: map['count'] as int,
      intervalSec: map['intervalSec'] as int,
    );
  }
}
