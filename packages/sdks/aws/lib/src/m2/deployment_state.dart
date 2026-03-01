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
    pulumi.Output<String>? applicationId,
    pulumi.Output<int>? applicationVersion,
    pulumi.Output<String>? deploymentId,
    pulumi.Output<String>? environmentId,
    pulumi.Output<bool>? forceStop,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? start,
    pulumi.Output<DeploymentTimeouts>? timeouts,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      applicationVersion = pulumi.Input.asOptionalInput<int>(applicationVersion),
      deploymentId = pulumi.Input.asOptionalInput<String>(deploymentId),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      forceStop = pulumi.Input.asOptionalInput<bool>(forceStop),
      region = pulumi.Input.asOptionalInput<String>(region),
      start = pulumi.Input.asOptionalInput<bool>(start),
      timeouts = pulumi.Input.asOptionalInput<DeploymentTimeouts>(timeouts);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      applicationVersion: map['applicationVersion'] == null ? null : pulumi.Output.create<int>(map['applicationVersion'] as int),
      deploymentId: map['deploymentId'] == null ? null : pulumi.Output.create<String>(map['deploymentId'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      forceStop: map['forceStop'] == null ? null : pulumi.Output.create<bool>(map['forceStop'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      start: map['start'] == null ? null : pulumi.Output.create<bool>(map['start'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DeploymentTimeouts>(DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

