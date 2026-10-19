// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentConfigTrafficRoutingConfigTimeBasedLinear {
  /// The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  final pulumi.Input<int?>? interval;
  /// The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  final pulumi.Input<int?>? percentage;

  /// Creates a new [DeploymentConfigTrafficRoutingConfigTimeBasedLinear].
  /// [interval] The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  /// [percentage] The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  const DeploymentConfigTrafficRoutingConfigTimeBasedLinear({
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
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
