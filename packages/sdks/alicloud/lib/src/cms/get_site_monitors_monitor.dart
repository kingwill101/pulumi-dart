// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSiteMonitorsMonitor {
  /// Address.
  final pulumi.Input<String> address;
  /// CreateTime.
  final pulumi.Input<String> createTime;
  /// Monitoring frequency.
  final pulumi.Input<String> interval;
  /// Task ID.
  final pulumi.Input<String> taskId;
  /// Task Name.
  final pulumi.Input<String> taskName;
  /// Task Type.
  final pulumi.Input<String> taskType;

  /// Creates a new [GetSiteMonitorsMonitor].
  /// [address] Address.
  /// [createTime] CreateTime.
  /// [interval] Monitoring frequency.
  /// [taskId] Task ID.
  /// [taskName] Task Name.
  /// [taskType] Task Type.
  GetSiteMonitorsMonitor({
    required this.address,
    required this.createTime,
    required this.interval,
    required this.taskId,
    required this.taskName,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'createTime': createTime,
      'interval': interval,
      'taskId': taskId,
      'taskName': taskName,
      'taskType': taskType,
    };
  }

  factory GetSiteMonitorsMonitor.fromMap(Map<String, dynamic> map) {
    return GetSiteMonitorsMonitor(
      address: pulumi.Input.fromValue(map['address'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}

