// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDeploymentConfigurationLinearConfiguration {
  /// Number of minutes to wait between each step during a linear deployment. Valid range: 0-1440 minutes.
  final pulumi.Input<String>? stepBakeTimeInMinutes;
  /// Percentage of traffic to shift in each step during a linear deployment. Valid range: 3.0-100.0.
  final pulumi.Input<double>? stepPercent;

  /// Creates a new [ServiceDeploymentConfigurationLinearConfiguration].
  /// [stepBakeTimeInMinutes] Number of minutes to wait between each step during a linear deployment. Valid range: 0-1440 minutes.
  /// [stepPercent] Percentage of traffic to shift in each step during a linear deployment. Valid range: 3.0-100.0.
  ServiceDeploymentConfigurationLinearConfiguration({
    this.stepBakeTimeInMinutes,
    this.stepPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stepBakeTimeInMinutes': ?stepBakeTimeInMinutes,
      'stepPercent': ?stepPercent,
    };
  }

  factory ServiceDeploymentConfigurationLinearConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLinearConfiguration(
      stepBakeTimeInMinutes: map['stepBakeTimeInMinutes'] == null ? null : ((map['stepBakeTimeInMinutes'] as String).input()).input(),
      stepPercent: map['stepPercent'] == null ? null : ((map['stepPercent'] as double).input()).input(),
    );
  }
}

