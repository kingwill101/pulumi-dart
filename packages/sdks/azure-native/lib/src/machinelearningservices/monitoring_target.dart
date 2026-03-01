// ignore_for_file: unused_element, unnecessary_cast


/// Monitoring target definition.
class MonitoringTarget {
  /// Reference to the deployment asset targeted by this monitor.
  final String? deploymentId;
  /// Reference to the model asset targeted by this monitor.
  final String? modelId;
  /// [Required] The machine learning task type of the monitored model.
  final String taskType;

  /// Creates a new [MonitoringTarget].
  /// [deploymentId] Reference to the deployment asset targeted by this monitor.
  /// [modelId] Reference to the model asset targeted by this monitor.
  /// [taskType] [Required] The machine learning task type of the monitored model.
  MonitoringTarget({
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
      deploymentId: map['deploymentId'] == null ? null : map['deploymentId'] as String,
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

