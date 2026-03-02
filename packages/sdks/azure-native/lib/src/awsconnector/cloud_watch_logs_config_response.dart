// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_config_status_type_enum_value_response.dart';

/// Definition of CloudWatchLogsConfig
class CloudWatchLogsConfigResponse {
  /// <p> The group name of the logs in CloudWatch Logs. For more information, see <a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'>Working with Log Groups and Log Streams</a>. </p>
  final pulumi.Input<String>? groupName;
  /// <p>The current status of the logs in CloudWatch Logs for a build project. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: CloudWatch Logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: CloudWatch Logs are not enabled for this build project.</p> </li> </ul>
  final pulumi.Input<LogsConfigStatusTypeEnumValueResponse>? status;
  /// <p> The prefix of the stream name of the CloudWatch Logs. For more information, see <a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'>Working with Log Groups and Log Streams</a>. </p>
  final pulumi.Input<String>? streamName;

  /// Creates a new [CloudWatchLogsConfigResponse].
  /// [groupName] <p> The group name of the logs in CloudWatch Logs. For more information, see <a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'>Working with Log Groups and Log Streams</a>. </p>
  /// [status] <p>The current status of the logs in CloudWatch Logs for a build project. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: CloudWatch Logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: CloudWatch Logs are not enabled for this build project.</p> </li> </ul>
  /// [streamName] <p> The prefix of the stream name of the CloudWatch Logs. For more information, see <a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'>Working with Log Groups and Log Streams</a>. </p>
  CloudWatchLogsConfigResponse({
    this.groupName,
    this.status,
    this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'status': ?pulumi.Input.mapOptionalInputValue<LogsConfigStatusTypeEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'streamName': ?streamName,
    };
  }

  factory CloudWatchLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return CloudWatchLogsConfigResponse(
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      status: map['status'] == null ? null : (LogsConfigStatusTypeEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      streamName: map['streamName'] == null ? null : (map['streamName'] as String).input(),
    );
  }
}

