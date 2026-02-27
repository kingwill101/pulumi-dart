// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deployment_timeouts/deployment_timeouts_m2.dart';

/// The set of arguments for Deployment.
class DeploymentM2Args {
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
  final pulumi.Input<DeploymentTimeoutsM2>? timeouts;

  DeploymentM2Args({
    required this.applicationId,
    required this.applicationVersion,
    required this.environmentId,
    this.forceStop,
    this.region,
    required this.start,
    this.timeouts,
  });

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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<DeploymentTimeoutsM2,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentM2Args.fromMap(Map<String, dynamic> map) {
    return DeploymentM2Args(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      applicationVersion: pulumi.Input.asInput<int>(map['applicationVersion']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      forceStop: pulumi.Input.asOptionalInput<bool>(map['forceStop']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      start: pulumi.Input.asInput<bool>(map['start']),
      timeouts:
          pulumi.Input.asOptionalInput<DeploymentTimeoutsM2>(map['timeouts']),
    );
  }
}
