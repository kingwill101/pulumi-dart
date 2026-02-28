// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentConfigurationCanaryConfiguration {
  /// Number of minutes to wait before shifting all traffic to the new deployment. Valid range: 0-1440 minutes.
  final String? canaryBakeTimeInMinutes;

  /// Percentage of traffic to route to the canary deployment. Valid range: 0.1-100.0.
  final double? canaryPercent;

  /// Creates a new [ServiceDeploymentConfigurationCanaryConfiguration].
  /// [canaryBakeTimeInMinutes] Number of minutes to wait before shifting all traffic to the new deployment. Valid range: 0-1440 minutes.
  /// [canaryPercent] Percentage of traffic to route to the canary deployment. Valid range: 0.1-100.0.
  ServiceDeploymentConfigurationCanaryConfiguration({
    this.canaryBakeTimeInMinutes,
    this.canaryPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canaryBakeTimeInMinutesValue = canaryBakeTimeInMinutes;
    if (canaryBakeTimeInMinutesValue != null) {
      map['canaryBakeTimeInMinutes'] = canaryBakeTimeInMinutesValue;
    }
    final canaryPercentValue = canaryPercent;
    if (canaryPercentValue != null) {
      map['canaryPercent'] = canaryPercentValue;
    }
    return map;
  }

  factory ServiceDeploymentConfigurationCanaryConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationCanaryConfiguration(
      canaryBakeTimeInMinutes: map['canaryBakeTimeInMinutes'] == null
          ? null
          : map['canaryBakeTimeInMinutes'] as String,
      canaryPercent:
          map['canaryPercent'] == null ? null : map['canaryPercent'] as double,
    );
  }
}
