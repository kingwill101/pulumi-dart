// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_last_deployment_failure_reason.dart';

class EnvironmentLastDeployment {
  final String deploymentId;
  final String deploymentStatus;
  final String deploymentType;
  final List<EnvironmentLastDeploymentFailureReason> failureReasons;
  final bool isDeploymentComplete;
  final List<String> messages;

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
      'failureReasons':
          pulumi.Input.encodeList<
            EnvironmentLastDeploymentFailureReason,
            Map<String, dynamic>
          >(failureReasons, (value) => value.toMap()),
      'isDeploymentComplete': isDeploymentComplete,
      'messages': messages,
    };
  }

  factory EnvironmentLastDeployment.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastDeployment(
      deploymentId: map['deploymentId'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      deploymentType: map['deploymentType'] as String,
      failureReasons:
          pulumi.Input.decodeList<EnvironmentLastDeploymentFailureReason>(
            map['failureReasons'],
            (value) => EnvironmentLastDeploymentFailureReason.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      isDeploymentComplete: map['isDeploymentComplete'] as bool,
      messages: (map['messages'] as List).cast<String>(),
    );
  }
}
