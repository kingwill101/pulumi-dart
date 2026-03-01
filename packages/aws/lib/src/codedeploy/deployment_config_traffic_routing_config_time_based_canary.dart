// ignore_for_file: unused_element, unnecessary_cast

class DeploymentConfigTrafficRoutingConfigTimeBasedCanary {
  /// The number of minutes between the first and second traffic shifts of a `TimeBasedCanary` deployment.
  final int? interval;

  /// The percentage of traffic to shift in the first increment of a `TimeBasedCanary` deployment.
  final int? percentage;

  /// Creates a new [DeploymentConfigTrafficRoutingConfigTimeBasedCanary].
  /// [interval] The number of minutes between the first and second traffic shifts of a `TimeBasedCanary` deployment.
  /// [percentage] The percentage of traffic to shift in the first increment of a `TimeBasedCanary` deployment.
  DeploymentConfigTrafficRoutingConfigTimeBasedCanary({
    this.interval,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'interval': ?interval, 'percentage': ?percentage};
  }

  factory DeploymentConfigTrafficRoutingConfigTimeBasedCanary.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentConfigTrafficRoutingConfigTimeBasedCanary(
      interval: map['interval'] == null ? null : map['interval'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
