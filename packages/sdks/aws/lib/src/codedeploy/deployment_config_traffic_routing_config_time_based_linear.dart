// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentConfigTrafficRoutingConfigTimeBasedLinear {
  /// The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  final pulumi.Input<int>? interval;
  /// The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  final pulumi.Input<int>? percentage;

  /// Creates a new [DeploymentConfigTrafficRoutingConfigTimeBasedLinear].
  /// [interval] The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  /// [percentage] The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  DeploymentConfigTrafficRoutingConfigTimeBasedLinear({
    this.interval,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'percentage': ?percentage,
    };
  }

  factory DeploymentConfigTrafficRoutingConfigTimeBasedLinear.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfigTimeBasedLinear(
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

