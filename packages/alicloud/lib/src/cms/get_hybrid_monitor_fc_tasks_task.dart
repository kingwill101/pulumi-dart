// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorFcTasksTask {
  /// Create the timestamp of the monitoring task. Unit: milliseconds.
  final String createTime;
  /// The ID of the monitoring task.
  final String hybridMonitorFcTaskId;
  /// The ID of the Hybrid Monitor Fc Task. The value formats as `<hybrid_monitor_fc_task_id>:<namespace>`.
  final String id;
  /// The index warehouse where the host belongs.
  final String namespace;
  /// The ID of the member account.
  final String targetUserId;
  /// The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  final String yarmConfig;

  /// Creates a new [GetHybridMonitorFcTasksTask].
  /// [createTime] Create the timestamp of the monitoring task. Unit: milliseconds.
  /// [hybridMonitorFcTaskId] The ID of the monitoring task.
  /// [id] The ID of the Hybrid Monitor Fc Task. The value formats as `<hybrid_monitor_fc_task_id>:<namespace>`.
  /// [namespace] The index warehouse where the host belongs.
  /// [targetUserId] The ID of the member account.
  /// [yarmConfig] The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  GetHybridMonitorFcTasksTask({
    required this.createTime,
    required this.hybridMonitorFcTaskId,
    required this.id,
    required this.namespace,
    required this.targetUserId,
    required this.yarmConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'hybridMonitorFcTaskId': hybridMonitorFcTaskId,
      'id': id,
      'namespace': namespace,
      'targetUserId': targetUserId,
      'yarmConfig': yarmConfig,
    };
  }

  factory GetHybridMonitorFcTasksTask.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorFcTasksTask(
      createTime: map['createTime'] as String,
      hybridMonitorFcTaskId: map['hybridMonitorFcTaskId'] as String,
      id: map['id'] as String,
      namespace: map['namespace'] as String,
      targetUserId: map['targetUserId'] as String,
      yarmConfig: map['yarmConfig'] as String,
    );
  }
}

