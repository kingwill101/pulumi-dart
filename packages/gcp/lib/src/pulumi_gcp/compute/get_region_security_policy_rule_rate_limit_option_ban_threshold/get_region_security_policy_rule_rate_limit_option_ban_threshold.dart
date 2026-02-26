// ignore_for_file: unused_element, unnecessary_cast

class GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold {
  /// Number of HTTP(S) requests for calculating the threshold.
  final int count;

  /// Interval over which the threshold is computed.
  final int intervalSec;

  GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold({
    required this.count,
    required this.intervalSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['intervalSec'] = intervalSec;
    return map;
  }

  factory GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold(
      count: map['count'] as int,
      intervalSec: map['intervalSec'] as int,
    );
  }
}
