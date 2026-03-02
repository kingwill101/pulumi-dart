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
  DeploymentArgs({
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
      applicationId: (map['applicationId'] as String).input(),
      applicationVersion: (map['applicationVersion'] as int).input(),
      environmentId: (map['environmentId'] as String).input(),
      forceStop: map['forceStop'] == null ? null : (map['forceStop'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      start: (map['start'] as bool).input(),
      timeouts: map['timeouts'] == null ? null : (DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

