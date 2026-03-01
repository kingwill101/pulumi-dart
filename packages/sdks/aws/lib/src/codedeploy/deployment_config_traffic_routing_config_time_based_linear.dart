// ignore_for_file: unused_element, unnecessary_cast


class DeploymentConfigTrafficRoutingConfigTimeBasedLinear {
  /// The number of minutes between each incremental traffic shift of a `TimeBasedLinear` deployment.
  final int? interval;
  /// The percentage of traffic that is shifted at the start of each increment of a `TimeBasedLinear` deployment.
  final int? percentage;

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
      interval: map['interval'] == null ? null : map['interval'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}

