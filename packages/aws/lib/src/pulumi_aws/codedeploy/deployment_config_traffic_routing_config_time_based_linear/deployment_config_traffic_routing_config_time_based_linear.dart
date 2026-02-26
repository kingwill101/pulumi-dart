// ignore_for_file: unused_element, unnecessary_cast

class DeploymentConfigTrafficRoutingConfigTimeBasedLinear {
  /// The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  final int? interval;

  /// The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  final int? percentage;

  DeploymentConfigTrafficRoutingConfigTimeBasedLinear({
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

  factory DeploymentConfigTrafficRoutingConfigTimeBasedLinear.fromMap(
      Map<String, dynamic> map) {
    return DeploymentConfigTrafficRoutingConfigTimeBasedLinear(
      interval: map['interval'] == null ? null : map['interval'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
