// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionIotAnalytics {
  /// The payload that contains a JSON array of records will be sent to IoT Analytics via a batch call.
  final pulumi.Input<bool>? batchMode;
  /// Name of AWS IOT Analytics channel.
  final pulumi.Input<String> channelName;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleErrorActionIotAnalytics].
  /// [batchMode] The payload that contains a JSON array of records will be sent to IoT Analytics via a batch call.
  /// [channelName] Name of AWS IOT Analytics channel.
  /// [roleArn] The ARN of the IAM role that grants access.
  TopicRuleErrorActionIotAnalytics({
    this.batchMode,
    required this.channelName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchMode': ?batchMode,
      'channelName': channelName,
      'roleArn': roleArn,
    };
  }

  factory TopicRuleErrorActionIotAnalytics.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionIotAnalytics(
      batchMode: map['batchMode'] == null ? null : (map['batchMode'] as bool).input(),
      channelName: (map['channelName'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

