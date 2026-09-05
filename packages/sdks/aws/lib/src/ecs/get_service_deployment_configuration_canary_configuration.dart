// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationCanaryConfiguration {
  /// Time to wait before shifting remaining traffic
  final pulumi.Input<String> canaryBakeTimeInMinutes;
  /// Percentage of traffic to route to canary deployment
  final pulumi.Input<double> canaryPercent;

  /// Creates a new [GetServiceDeploymentConfigurationCanaryConfiguration].
  /// [canaryBakeTimeInMinutes] Time to wait before shifting remaining traffic
  /// [canaryPercent] Percentage of traffic to route to canary deployment
  const GetServiceDeploymentConfigurationCanaryConfiguration({
    required this.canaryBakeTimeInMinutes,
    required this.canaryPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryBakeTimeInMinutes': canaryBakeTimeInMinutes,
      'canaryPercent': canaryPercent,
    };
  }

  factory GetServiceDeploymentConfigurationCanaryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationCanaryConfiguration(
      canaryBakeTimeInMinutes: pulumi.Input.fromValue(map['canaryBakeTimeInMinutes'] as String),
      canaryPercent: pulumi.Input.fromValue((map['canaryPercent'] as num).toDouble()),
    );
  }
}
