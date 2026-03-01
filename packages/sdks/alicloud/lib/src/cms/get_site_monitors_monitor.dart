// ignore_for_file: unused_element, unnecessary_cast


class GetSiteMonitorsMonitor {
  /// Address.
  final String address;
  /// CreateTime.
  final String createTime;
  /// Monitoring frequency.
  final String interval;
  /// Task ID.
  final String taskId;
  /// Task Name.
  final String taskName;
  /// Task Type.
  final String taskType;

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
      address: map['address'] as String,
      createTime: map['createTime'] as String,
      interval: map['interval'] as String,
      taskId: map['taskId'] as String,
      taskName: map['taskName'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

