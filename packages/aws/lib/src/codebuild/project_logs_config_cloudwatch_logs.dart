// ignore_for_file: unused_element, unnecessary_cast

class ProjectLogsConfigCloudwatchLogs {
  /// Group name of the logs in CloudWatch Logs.
  final String? groupName;

  /// Current status of logs in CloudWatch Logs for a build project. Valid values: `ENABLED`,
  /// `DISABLED`. Defaults to `ENABLED`.
  final String? status;

  /// Prefix of the log stream name of the logs in CloudWatch Logs.
  final String? streamName;

  /// Creates a new [ProjectLogsConfigCloudwatchLogs].
  /// [groupName] Group name of the logs in CloudWatch Logs.
  /// [status] Current status of logs in CloudWatch Logs for a build project. Valid values: `ENABLED`,
  /// [streamName] Prefix of the log stream name of the logs in CloudWatch Logs.
  ProjectLogsConfigCloudwatchLogs({
    this.groupName,
    this.status,
    this.streamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupNameValue = groupName;
    if (groupNameValue != null) {
      map['groupName'] = groupNameValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final streamNameValue = streamName;
    if (streamNameValue != null) {
      map['streamName'] = streamNameValue;
    }
    return map;
  }

  factory ProjectLogsConfigCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfigCloudwatchLogs(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      streamName:
          map['streamName'] == null ? null : map['streamName'] as String,
    );
  }
}
