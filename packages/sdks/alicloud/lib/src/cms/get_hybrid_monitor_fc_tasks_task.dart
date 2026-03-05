// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorFcTasksTask {
  /// Create the timestamp of the monitoring task. Unit: milliseconds.
  final pulumi.Input<String> createTime;
  /// The ID of the monitoring task.
  final pulumi.Input<String> hybridMonitorFcTaskId;
  /// The ID of the Hybrid Monitor Fc Task. The value formats as `&lt;hybrid_monitor_fc_task_id&gt;:&lt;namespace&gt;`.
  final pulumi.Input<String> id;
  /// The index warehouse where the host belongs.
  final pulumi.Input<String> namespace;
  /// The ID of the member account.
  final pulumi.Input<String> targetUserId;
  /// The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  final pulumi.Input<String> yarmConfig;

  /// Creates a new [GetHybridMonitorFcTasksTask].
  /// [createTime] Create the timestamp of the monitoring task. Unit: milliseconds.
  /// [hybridMonitorFcTaskId] The ID of the monitoring task.
  /// [id] The ID of the Hybrid Monitor Fc Task. The value formats as `&lt;hybrid_monitor_fc_task_id&gt;:&lt;namespace&gt;`.
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      hybridMonitorFcTaskId: pulumi.Input.fromValue(map['hybridMonitorFcTaskId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      targetUserId: pulumi.Input.fromValue(map['targetUserId'] as String),
      yarmConfig: pulumi.Input.fromValue(map['yarmConfig'] as String),
    );
  }
}

