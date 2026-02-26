// ignore_for_file: unused_element, unnecessary_cast

class DeploymentConfigTrafficRoutingConfigTimeBasedCanary {
  /// The number of minutes between the first and second traffic shifts of a `TimeBasedCanary` deployment.
  final int? interval;

  /// The percentage of traffic to shift in the first increment of a `TimeBasedCanary` deployment.
  final int? percentage;

  DeploymentConfigTrafficRoutingConfigTimeBasedCanary({
    this.interval,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory DeploymentConfigTrafficRoutingConfigTimeBasedCanary.fromMap(
      Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfigTimeBasedCanary(
      interval: map['interval'] == null ? null : map['interval'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
