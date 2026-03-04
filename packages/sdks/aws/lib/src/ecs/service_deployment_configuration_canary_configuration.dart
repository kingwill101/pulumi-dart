// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDeploymentConfigurationCanaryConfiguration {
  /// Number of minutes to wait before shifting all traffic to the new deployment. Valid range: 0-1440 minutes.
  final pulumi.Input<String>? canaryBakeTimeInMinutes;

  /// Percentage of traffic to route to the canary deployment. Valid range: 0.1-100.0.
  final pulumi.Input<double>? canaryPercent;

  /// Creates a new [ServiceDeploymentConfigurationCanaryConfiguration].
  /// [canaryBakeTimeInMinutes] Number of minutes to wait before shifting all traffic to the new deployment. Valid range: 0-1440 minutes.
  /// [canaryPercent] Percentage of traffic to route to the canary deployment. Valid range: 0.1-100.0.
  ServiceDeploymentConfigurationCanaryConfiguration({
    this.canaryBakeTimeInMinutes,
    this.canaryPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryBakeTimeInMinutes': ?canaryBakeTimeInMinutes,
      'canaryPercent': ?canaryPercent,
    };
  }

  factory ServiceDeploymentConfigurationCanaryConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceDeploymentConfigurationCanaryConfiguration(
      canaryBakeTimeInMinutes: (() {
        final guardedValue = map['canaryBakeTimeInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      canaryPercent: (() {
        final guardedValue = map['canaryPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
