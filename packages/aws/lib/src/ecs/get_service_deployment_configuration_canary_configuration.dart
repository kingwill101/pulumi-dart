// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationCanaryConfiguration {
  /// Time to wait before shifting remaining traffic
  final String canaryBakeTimeInMinutes;

  /// Percentage of traffic to route to canary deployment
  final double canaryPercent;

  /// Creates a new [GetServiceDeploymentConfigurationCanaryConfiguration].
  /// [canaryBakeTimeInMinutes] Time to wait before shifting remaining traffic
  /// [canaryPercent] Percentage of traffic to route to canary deployment
  GetServiceDeploymentConfigurationCanaryConfiguration({
    required this.canaryBakeTimeInMinutes,
    required this.canaryPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryBakeTimeInMinutes': canaryBakeTimeInMinutes,
      'canaryPercent': canaryPercent,
    };
  }

  factory GetServiceDeploymentConfigurationCanaryConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceDeploymentConfigurationCanaryConfiguration(
      canaryBakeTimeInMinutes: map['canaryBakeTimeInMinutes'] as String,
      canaryPercent: map['canaryPercent'] as double,
    );
  }
}
