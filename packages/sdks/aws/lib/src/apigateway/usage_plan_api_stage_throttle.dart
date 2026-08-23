// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UsagePlanApiStageThrottle {
  /// API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  final pulumi.Input<int>? burstLimit;
  /// Method to apply the throttle settings for. Specify the path and method, for example `/test/GET`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> path;
  /// API request steady-state rate limit.
  final pulumi.Input<double>? rateLimit;

  /// Creates a new [UsagePlanApiStageThrottle].
  /// [burstLimit] API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  /// [path] Method to apply the throttle settings for. Specify the path and method, for example `/test/GET`.
  /// [rateLimit] API request steady-state rate limit.
  const UsagePlanApiStageThrottle({
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
      burstLimit: (() { final guardedValue = map['burstLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
