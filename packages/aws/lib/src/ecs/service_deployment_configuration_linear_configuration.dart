// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentConfigurationLinearConfiguration {
  /// Number of minutes to wait between each step during a linear deployment. Valid range: 0-1440 minutes.
  final String? stepBakeTimeInMinutes;

  /// Percentage of traffic to shift in each step during a linear deployment. Valid range: 3.0-100.0.
  final double? stepPercent;

  /// Creates a new [ServiceDeploymentConfigurationLinearConfiguration].
  /// [stepBakeTimeInMinutes] Number of minutes to wait between each step during a linear deployment. Valid range: 0-1440 minutes.
  /// [stepPercent] Percentage of traffic to shift in each step during a linear deployment. Valid range: 3.0-100.0.
  ServiceDeploymentConfigurationLinearConfiguration({
    this.stepBakeTimeInMinutes,
    this.stepPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stepBakeTimeInMinutesValue = stepBakeTimeInMinutes;
    if (stepBakeTimeInMinutesValue != null) {
      map['stepBakeTimeInMinutes'] = stepBakeTimeInMinutesValue;
    }
    final stepPercentValue = stepPercent;
    if (stepPercentValue != null) {
      map['stepPercent'] = stepPercentValue;
    }
    return map;
  }

  factory ServiceDeploymentConfigurationLinearConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLinearConfiguration(
      stepBakeTimeInMinutes: map['stepBakeTimeInMinutes'] == null
          ? null
          : map['stepBakeTimeInMinutes'] as String,
      stepPercent:
          map['stepPercent'] == null ? null : map['stepPercent'] as double,
    );
  }
}
