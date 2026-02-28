// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeBeta {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int count;
  /// Interval over which the threshold is computed.
  final int intervalSec;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeBeta].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeBeta({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'intervalSec': intervalSec,
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeBeta(
      count: map['count'] as int,
      intervalSec: map['intervalSec'] as int,
    );
  }
}

