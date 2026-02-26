// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_timeouts/deployment_timeouts2.dart';

/// The set of arguments for Deployment.
class DeploymentArgs5 {
  /// Application to deploy.
  final Input<String> applicationId;

  /// Version to application to deploy
  final Input<int> applicationVersion;

  /// Environment to deploy application to.
  final Input<String> environmentId;
  final Input<bool>? forceStop;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Start the application once deployed.
  final Input<bool> start;
  final Input<DeploymentTimeouts2>? timeouts;

  DeploymentArgs5({
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
      map['timeouts'] = Input.mapOptionalInputValue<DeploymentTimeouts2,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeploymentArgs5.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs5(
      applicationId: Input.asInput<String>(map['applicationId']),
      applicationVersion: Input.asInput<int>(map['applicationVersion']),
      environmentId: Input.asInput<String>(map['environmentId']),
      forceStop: Input.asOptionalInput<bool>(map['forceStop']),
      region: Input.asOptionalInput<String>(map['region']),
      start: Input.asInput<bool>(map['start']),
      timeouts: Input.asOptionalInput<DeploymentTimeouts2>(map['timeouts']),
    );
  }
}
