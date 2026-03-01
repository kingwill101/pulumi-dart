// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout {
  /// Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
  /// represented with a 0 seconds field and a positive nanos field. Must be from 0 to 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  /// Note: these bounds are computed from: 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years
  final String? seconds;

  /// Creates a new [RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution. Durations less than one second are
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': ?nanos, 'seconds': ?seconds};
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherDefaultRouteActionRetryPolicyPerTryTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}
