// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeout {
  /// Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
  /// represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  /// Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years
  final String? seconds;

  RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeout({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final secondsValue = seconds;
    if (secondsValue != null) {
      map['seconds'] = secondsValue;
    }
    return map;
  }

  factory RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeout.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionRetryPolicyPerTryTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}
