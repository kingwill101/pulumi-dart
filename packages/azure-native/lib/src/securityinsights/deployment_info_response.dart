// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_response.dart';

/// Information regarding a deployment.
class DeploymentInfoResponse {
  /// Deployment information.
  final DeploymentResponse? deployment;
  /// Status while fetching the last deployment.
  final String? deploymentFetchStatus;
  /// Additional details about the deployment that can be shown to the user.
  final String? message;

  /// Creates a new [DeploymentInfoResponse].
  /// [deployment] Deployment information.
  /// [deploymentFetchStatus] Status while fetching the last deployment.
  /// [message] Additional details about the deployment that can be shown to the user.
  DeploymentInfoResponse({
    this.deployment,
    this.deploymentFetchStatus,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': ?deployment == null ? null : deployment!.toMap(),
      'deploymentFetchStatus': ?deploymentFetchStatus,
      'message': ?message,
    };
  }

  factory DeploymentInfoResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentInfoResponse(
      deployment: map['deployment'] == null ? null : DeploymentResponse.fromMap((map['deployment'] as Map).cast<String, dynamic>()),
      deploymentFetchStatus: map['deploymentFetchStatus'] == null ? null : map['deploymentFetchStatus'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

