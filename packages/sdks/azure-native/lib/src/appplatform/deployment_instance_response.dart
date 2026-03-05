// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment instance payload
class DeploymentInstanceResponse {
  /// Discovery status of the deployment instance
  final pulumi.Input<String> discoveryStatus;
  /// Name of the deployment instance
  final pulumi.Input<String> name;
  /// Failed reason of the deployment instance
  final pulumi.Input<String> reason;
  /// Start time of the deployment instance
  final pulumi.Input<String> startTime;
  /// Status of the deployment instance
  final pulumi.Input<String> status;
  /// Availability zone information of the deployment instance
  final pulumi.Input<String> zone;

  /// Creates a new [DeploymentInstanceResponse].
  /// [discoveryStatus] Discovery status of the deployment instance
  /// [name] Name of the deployment instance
  /// [reason] Failed reason of the deployment instance
  /// [startTime] Start time of the deployment instance
  /// [status] Status of the deployment instance
  /// [zone] Availability zone information of the deployment instance
  DeploymentInstanceResponse({
    required this.discoveryStatus,
    required this.name,
    required this.reason,
    required this.startTime,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryStatus': discoveryStatus,
      'name': name,
      'reason': reason,
      'startTime': startTime,
      'status': status,
      'zone': zone,
    };
  }

  factory DeploymentInstanceResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentInstanceResponse(
      discoveryStatus: pulumi.Input.fromValue(map['discoveryStatus'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

