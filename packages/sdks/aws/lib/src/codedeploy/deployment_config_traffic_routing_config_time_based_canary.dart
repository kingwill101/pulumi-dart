// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentConfigTrafficRoutingConfigTimeBasedCanary {
  /// The number of minutes between the first and second traffic shifts of a `TimeBasedCanary` deployment.
  final pulumi.Input<int>? interval;
  /// The percentage of traffic to shift in the first increment of a `TimeBasedCanary` deployment.
  final pulumi.Input<int>? percentage;

  /// Creates a new [DeploymentConfigTrafficRoutingConfigTimeBasedCanary].
  /// [interval] The number of minutes between the first and second traffic shifts of a `TimeBasedCanary` deployment.
  /// [percentage] The percentage of traffic to shift in the first increment of a `TimeBasedCanary` deployment.
  DeploymentConfigTrafficRoutingConfigTimeBasedCanary({
    this.interval,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'percentage': ?percentage,
    };
  }

  factory DeploymentConfigTrafficRoutingConfigTimeBasedCanary.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfigTimeBasedCanary(
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

