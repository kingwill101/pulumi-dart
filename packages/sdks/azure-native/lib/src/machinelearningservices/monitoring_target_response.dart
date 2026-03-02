// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitoring target definition.
class MonitoringTargetResponse {
  /// Reference to the deployment asset targeted by this monitor.
  final pulumi.Input<String>? deploymentId;
  /// Reference to the model asset targeted by this monitor.
  final pulumi.Input<String>? modelId;
  /// [Required] The machine learning task type of the monitored model.
  final pulumi.Input<String> taskType;

  /// Creates a new [MonitoringTargetResponse].
  /// [deploymentId] Reference to the deployment asset targeted by this monitor.
  /// [modelId] Reference to the model asset targeted by this monitor.
  /// [taskType] [Required] The machine learning task type of the monitored model.
  MonitoringTargetResponse({
    this.deploymentId,
    this.modelId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentId': ?deploymentId,
      'modelId': ?modelId,
      'taskType': taskType,
    };
  }

  factory MonitoringTargetResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringTargetResponse(
      deploymentId: map['deploymentId'] == null ? null : (map['deploymentId']! as String).input(),
      modelId: map['modelId'] == null ? null : (map['modelId']! as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

