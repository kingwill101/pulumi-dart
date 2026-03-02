// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectLogsConfigCloudwatchLogs {
  /// Group name of the logs in CloudWatch Logs.
  final pulumi.Input<String>? groupName;
  /// Current status of logs in CloudWatch Logs for a build project. Valid values: `ENABLED`,
  /// `DISABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? status;
  /// Prefix of the log stream name of the logs in CloudWatch Logs.
  final pulumi.Input<String>? streamName;

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
    return <String, dynamic>{
      'groupName': ?groupName,
      'status': ?status,
      'streamName': ?streamName,
    };
  }

  factory ProjectLogsConfigCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfigCloudwatchLogs(
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      streamName: map['streamName'] == null ? null : (map['streamName'] as String).input(),
    );
  }
}

