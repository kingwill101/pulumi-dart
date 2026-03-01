// ignore_for_file: unused_element, unnecessary_cast


/// Description about a deployment.
class DeploymentType {
  /// Deployment identifier.
  final String? deploymentId;
  /// Url to access repository action logs.
  final String? deploymentLogsUrl;
  /// The outcome of the deployment.
  final String? deploymentResult;
  /// Current status of the deployment.
  final String? deploymentState;
  /// The time when the deployment finished.
  final String? deploymentTime;

  /// Creates a new [DeploymentType].
  /// [deploymentId] Deployment identifier.
  /// [deploymentLogsUrl] Url to access repository action logs.
  /// [deploymentResult] The outcome of the deployment.
  /// [deploymentState] Current status of the deployment.
  /// [deploymentTime] The time when the deployment finished.
  DeploymentType({
    this.deploymentId,
    this.deploymentLogsUrl,
    this.deploymentResult,
    this.deploymentState,
    this.deploymentTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'deploymentLogsUrl': ?deploymentLogsUrl,
      'deploymentResult': ?deploymentResult,
      'deploymentState': ?deploymentState,
      'deploymentTime': ?deploymentTime,
    };
  }

  factory DeploymentType.fromMap(Map<String, dynamic> map) {
    return DeploymentType(
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      deploymentLogsUrl: map['deploymentLogsUrl'] == null ? null : map['deploymentLogsUrl'] as String,
      deploymentResult: map['deploymentResult'] == null ? null : map['deploymentResult'] as String,
      deploymentState: map['deploymentState'] == null ? null : map['deploymentState'] as String,
      deploymentTime: map['deploymentTime'] == null ? null : map['deploymentTime'] as String,
    );
  }
}

