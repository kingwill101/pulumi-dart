// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_timeouts.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// Application to deploy.
  final pulumi.Input<String>? applicationId;
  /// Version to application to deploy
  final pulumi.Input<int>? applicationVersion;
  final pulumi.Input<String>? deploymentId;
  /// Environment to deploy application to.
  final pulumi.Input<String>? environmentId;
  final pulumi.Input<bool>? forceStop;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Start the application once deployed.
  final pulumi.Input<bool>? start;
  final pulumi.Input<DeploymentTimeouts>? timeouts;

  /// Creates a new [DeploymentState].
  /// [applicationId] Application to deploy.
  /// [applicationVersion] Version to application to deploy
  /// [deploymentId] Optional.
  /// [environmentId] Environment to deploy application to.
  /// [forceStop] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [start] Start the application once deployed.
  /// [timeouts] Optional.
  DeploymentState({
    this.applicationId,
    this.applicationVersion,
    this.deploymentId,
    this.environmentId,
    this.forceStop,
    this.region,
    this.start,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationVersion': ?applicationVersion,
      'deploymentId': ?deploymentId,
      'environmentId': ?environmentId,
      'forceStop': ?forceStop,
      'region': ?region,
      'start': ?start,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DeploymentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      applicationVersion: map['applicationVersion'] == null ? null : (map['applicationVersion'] as int).input(),
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      forceStop: map['forceStop'] == null ? null : (map['forceStop'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      start: map['start'] == null ? null : (map['start'] as bool).input(),
      timeouts: map['timeouts'] == null ? null : (DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

