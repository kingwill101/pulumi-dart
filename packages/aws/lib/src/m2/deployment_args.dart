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
    required String applicationId,
    required int applicationVersion,
    required String environmentId,
    bool? forceStop,
    String? region,
    required bool start,
    DeploymentTimeouts? timeouts,
  })  : applicationId = pulumi.Input.asInput<String>(applicationId),
        applicationVersion = pulumi.Input.asInput<int>(applicationVersion),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        forceStop = pulumi.Input.asOptionalInput<bool>(forceStop),
        region = pulumi.Input.asOptionalInput<String>(region),
        start = pulumi.Input.asInput<bool>(start),
        timeouts = pulumi.Input.asOptionalInput<DeploymentTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['applicationVersion'] = applicationVersion;
    map['environmentId'] = environmentId;
    final forceStopValue = forceStop;
    if (forceStopValue != null) {
      map['forceStop'] = forceStopValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['start'] = start;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DeploymentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      applicationId: map['applicationId'] as String,
      applicationVersion: map['applicationVersion'] as int,
      environmentId: map['environmentId'] as String,
      forceStop: map['forceStop'] == null ? null : map['forceStop'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      start: map['start'] as bool,
      timeouts: map['timeouts'] == null
          ? null
          : DeploymentTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
