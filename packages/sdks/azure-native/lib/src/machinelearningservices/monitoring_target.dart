// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitoring target definition.
class MonitoringTarget {
  /// Reference to the deployment asset targeted by this monitor.
  final pulumi.Input<String>? deploymentId;
  /// Reference to the model asset targeted by this monitor.
  final pulumi.Input<String>? modelId;
  /// [Required] The machine learning task type of the monitored model.
  final pulumi.Input<String> taskType;

  /// Creates a new [MonitoringTarget].
  /// [deploymentId] Reference to the deployment asset targeted by this monitor.
  /// [modelId] Reference to the model asset targeted by this monitor.
  /// [taskType] [Required] The machine learning task type of the monitored model.
  const MonitoringTarget({
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

  factory MonitoringTarget.fromMap(Map<String, dynamic> map) {
    return MonitoringTarget(
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}

