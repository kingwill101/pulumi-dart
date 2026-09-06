// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logs_config_status_type_enum_value_response.dart';

/// Definition of CloudWatchLogsConfig
class CloudWatchLogsConfigResponse {
  /// &lt;p&gt; The group name of the logs in CloudWatch Logs. For more information, see &lt;a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'&gt;Working with Log Groups and Log Streams&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<String?>? groupName;
  /// &lt;p&gt;The current status of the logs in CloudWatch Logs for a build project. Valid values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt;: CloudWatch Logs are enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt;: CloudWatch Logs are not enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<LogsConfigStatusTypeEnumValueResponse?>? status;
  /// &lt;p&gt; The prefix of the stream name of the CloudWatch Logs. For more information, see &lt;a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'&gt;Working with Log Groups and Log Streams&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<String?>? streamName;

  /// Creates a new [CloudWatchLogsConfigResponse].
  /// [groupName] &lt;p&gt; The group name of the logs in CloudWatch Logs. For more information, see &lt;a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'&gt;Working with Log Groups and Log Streams&lt;/a&gt;. &lt;/p&gt;
  /// [status] &lt;p&gt;The current status of the logs in CloudWatch Logs for a build project. Valid values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt;: CloudWatch Logs are enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt;: CloudWatch Logs are not enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [streamName] &lt;p&gt; The prefix of the stream name of the CloudWatch Logs. For more information, see &lt;a href='https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html'&gt;Working with Log Groups and Log Streams&lt;/a&gt;. &lt;/p&gt;
  const CloudWatchLogsConfigResponse({
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
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogsConfigStatusTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      streamName: (() { final guardedValue = map['streamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
