// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UsagePlanApiStageThrottle {
  /// The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  final pulumi.Input<int>? burstLimit;
  /// Method to apply the throttle settings for. Specfiy the path and method, for example `/test/GET`.
  final pulumi.Input<String> path;
  /// The API request steady-state rate limit.
  final pulumi.Input<double>? rateLimit;

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
      burstLimit: map['burstLimit'] == null ? null : (map['burstLimit'] as int).input(),
      path: (map['path'] as String).input(),
      rateLimit: map['rateLimit'] == null ? null : (map['rateLimit'] as double).input(),
    );
  }
}

