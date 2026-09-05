// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UsagePlanThrottleSettings {
  /// API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  final pulumi.Input<int?>? burstLimit;
  /// API request steady-state rate limit.
  final pulumi.Input<double?>? rateLimit;

  /// Creates a new [UsagePlanThrottleSettings].
  /// [burstLimit] API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity.
  /// [rateLimit] API request steady-state rate limit.
  const UsagePlanThrottleSettings({
    this.burstLimit,
    this.rateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burstLimit': ?burstLimit,
      'rateLimit': ?rateLimit,
    };
  }

  factory UsagePlanThrottleSettings.fromMap(Map<String, dynamic> map) {
    return UsagePlanThrottleSettings(
      burstLimit: (() { final guardedValue = map['burstLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
