// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationLinearConfiguration {
  /// Time to wait between deployment steps
  final pulumi.Input<String> stepBakeTimeInMinutes;

  /// Percentage of traffic to shift in each step
  final pulumi.Input<double> stepPercent;

  /// Creates a new [GetServiceDeploymentConfigurationLinearConfiguration].
  /// [stepBakeTimeInMinutes] Time to wait between deployment steps
  /// [stepPercent] Percentage of traffic to shift in each step
  GetServiceDeploymentConfigurationLinearConfiguration({
    required this.stepBakeTimeInMinutes,
    required this.stepPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stepBakeTimeInMinutes': stepBakeTimeInMinutes,
      'stepPercent': stepPercent,
    };
  }

  factory GetServiceDeploymentConfigurationLinearConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceDeploymentConfigurationLinearConfiguration(
      stepBakeTimeInMinutes: pulumi.Input.fromValue(
        map['stepBakeTimeInMinutes'] as String,
      ),
      stepPercent: pulumi.Input.fromValue(map['stepPercent'] as double),
    );
  }
}
