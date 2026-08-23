// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_timeouts.dart';

/// {@template pulumi_m2_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_m2_deployment_deployment_args_doc}
class DeploymentArgs {
  /// Application to deploy.
  final pulumi.Input<String> applicationId;
  /// Version to application to deploy
  final pulumi.Input<int> applicationVersion;
  /// Environment to deploy application to.
  final pulumi.Input<String> environmentId;
  final pulumi.Input<bool>? forceStop;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Start the application once deployed.
  final pulumi.Input<bool> start;
  final pulumi.Input<DeploymentTimeouts>? timeouts;

  /// Creates a new [DeploymentArgs].
  /// [applicationId] Application to deploy.
  /// [applicationVersion] Version to application to deploy
  /// [environmentId] Environment to deploy application to.
  /// [forceStop] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [start] Start the application once deployed.
  /// [timeouts] Optional.
  const DeploymentArgs({
    required this.applicationId,
    required this.applicationVersion,
    required this.environmentId,
    this.forceStop,
    this.region,
    required this.start,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'applicationVersion': applicationVersion,
      'environmentId': environmentId,
      'forceStop': ?forceStop,
      'region': ?region,
      'start': start,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DeploymentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      applicationVersion: pulumi.Input.fromValue(map['applicationVersion'] as int),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      forceStop: (() { final guardedValue = map['forceStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: pulumi.Input.fromValue(map['start'] as bool),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
