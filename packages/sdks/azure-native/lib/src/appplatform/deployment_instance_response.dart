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
      discoveryStatus: (map['discoveryStatus'] as String).input(),
      name: (map['name'] as String).input(),
      reason: (map['reason'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

