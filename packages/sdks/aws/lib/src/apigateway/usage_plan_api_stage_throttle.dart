// ignore_for_file: unused_element, unnecessary_cast


class UsagePlanApiStageThrottle {
  /// The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  final int? burstLimit;
  /// Method to apply the throttle settings for. Specfiy the path and method, for example `/test/GET`.
  final String path;
  /// The API request steady-state rate limit.
  final double? rateLimit;

  /// Creates a new [UsagePlanApiStageThrottle].
  /// [burstLimit] The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  /// [path] Method to apply the throttle settings for. Specfiy the path and method, for example `/test/GET`.
  /// [rateLimit] The API request steady-state rate limit.
  UsagePlanApiStageThrottle({
    this.burstLimit,
    required this.path,
    this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstLimit': ?burstLimit,
      'path': path,
      'rateLimit': ?rateLimit,
    };
  }

  factory UsagePlanApiStageThrottle.fromMap(Map<String, dynamic> map) {
    return UsagePlanApiStageThrottle(
      burstLimit: map['burstLimit'] == null ? null : map['burstLimit'] as int,
      path: map['path'] as String,
      rateLimit: map['rateLimit'] == null ? null : map['rateLimit'] as double,
    );
  }
}

