// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_last_deployment_failure_reason.dart';

class EnvironmentLastDeployment {
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> deploymentStatus;
  final pulumi.Input<String> deploymentType;
  final pulumi.Input<List<EnvironmentLastDeploymentFailureReason>> failureReasons;
  final pulumi.Input<bool> isDeploymentComplete;
  final pulumi.Input<List<String>> messages;

  /// Creates a new [EnvironmentLastDeployment].
  /// [deploymentId] Required.
  /// [deploymentStatus] Required.
  /// [deploymentType] Required.
  /// [failureReasons] Required.
  /// [isDeploymentComplete] Required.
  /// [messages] Required.
  EnvironmentLastDeployment({
    required this.deploymentId,
    required this.deploymentStatus,
    required this.deploymentType,
    required this.failureReasons,
    required this.isDeploymentComplete,
    required this.messages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': deploymentId,
      'deploymentStatus': deploymentStatus,
      'deploymentType': deploymentType,
      'failureReasons': pulumi.Input.mapInputValue<List<EnvironmentLastDeploymentFailureReason>, List<Map<String, dynamic>>>(failureReasons, (value) => pulumi.Input.encodeList<EnvironmentLastDeploymentFailureReason, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDeploymentComplete': isDeploymentComplete,
      'messages': messages,
    };
  }

  factory EnvironmentLastDeployment.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastDeployment(
      deploymentId: (map['deploymentId'] as String).input(),
      deploymentStatus: (map['deploymentStatus'] as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      failureReasons: (pulumi.Input.decodeList<EnvironmentLastDeploymentFailureReason>(map['failureReasons']!, (value) => EnvironmentLastDeploymentFailureReason.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isDeploymentComplete: (map['isDeploymentComplete'] as bool).input(),
      messages: ((map['messages'] as List).cast<String>()).input(),
    );
  }
}

