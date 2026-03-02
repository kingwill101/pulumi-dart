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
      address: (map['address'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      interval: (map['interval'] as String).input(),
      taskId: (map['taskId'] as String).input(),
      taskName: (map['taskName'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

