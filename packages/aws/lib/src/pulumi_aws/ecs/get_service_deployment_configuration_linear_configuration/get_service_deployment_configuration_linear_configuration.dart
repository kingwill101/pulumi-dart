// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationLinearConfiguration {
  /// Time to wait between deployment steps
  final String stepBakeTimeInMinutes;

  /// Percentage of traffic to shift in each step
  final double stepPercent;

  GetServiceDeploymentConfigurationLinearConfiguration({
    required this.stepBakeTimeInMinutes,
    required this.stepPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stepBakeTimeInMinutes'] = stepBakeTimeInMinutes;
    map['stepPercent'] = stepPercent;
    return map;
  }

  factory GetServiceDeploymentConfigurationLinearConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationLinearConfiguration(
      stepBakeTimeInMinutes: map['stepBakeTimeInMinutes'] as String,
      stepPercent: map['stepPercent'] as double,
    );
  }
}
