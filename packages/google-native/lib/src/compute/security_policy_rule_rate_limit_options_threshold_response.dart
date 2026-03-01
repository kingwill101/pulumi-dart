// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleRateLimitOptionsThresholdResponse {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int count;

  /// Interval over which the threshold is computed.
  final int intervalSec;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsThresholdResponse].
  /// [count] Number of HTTP(S) requests for calculating the threshold.
  /// [intervalSec] Interval over which the threshold is computed.
  SecurityPolicyRuleRateLimitOptionsThresholdResponse({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'intervalSec': intervalSec};
  }

  factory SecurityPolicyRuleRateLimitOptionsThresholdResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleRateLimitOptionsThresholdResponse(
      count: map['count'] as int,
      intervalSec: map['intervalSec'] as int,
    );
  }
}
