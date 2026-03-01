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
    required pulumi.Output<String> applicationId,
    required pulumi.Output<int> applicationVersion,
    required pulumi.Output<String> environmentId,
    pulumi.Output<bool>? forceStop,
    pulumi.Output<String>? region,
    required pulumi.Output<bool> start,
    pulumi.Output<DeploymentTimeouts>? timeouts,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      applicationVersion = pulumi.Input.asInput<int>(applicationVersion),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      forceStop = pulumi.Input.asOptionalInput<bool>(forceStop),
      region = pulumi.Input.asOptionalInput<String>(region),
      start = pulumi.Input.asInput<bool>(start),
      timeouts = pulumi.Input.asOptionalInput<DeploymentTimeouts>(timeouts);

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
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      applicationVersion: pulumi.Output.create<int>(map['applicationVersion'] as int),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      forceStop: map['forceStop'] == null ? null : pulumi.Output.create<bool>(map['forceStop'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      start: pulumi.Output.create<bool>(map['start'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DeploymentTimeouts>(DeploymentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

