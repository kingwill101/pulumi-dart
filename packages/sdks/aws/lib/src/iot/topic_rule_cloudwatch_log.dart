// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleCloudwatchLog {
  /// The payload that contains a JSON array of records will be sent to CloudWatch via a batch call.
  final pulumi.Input<bool>? batchMode;
  /// The CloudWatch log group name.
  final pulumi.Input<String> logGroupName;
  /// The IAM role ARN that allows access to the CloudWatch alarm.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleCloudwatchLog].
  /// [batchMode] The payload that contains a JSON array of records will be sent to CloudWatch via a batch call.
  /// [logGroupName] The CloudWatch log group name.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch alarm.
  TopicRuleCloudwatchLog({
    this.batchMode,
    required this.logGroupName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchMode': ?batchMode,
      'logGroupName': logGroupName,
      'roleArn': roleArn,
    };
  }

  factory TopicRuleCloudwatchLog.fromMap(Map<String, dynamic> map) {
    return TopicRuleCloudwatchLog(
      batchMode: map['batchMode'] == null ? null : (map['batchMode'] as bool).input(),
      logGroupName: (map['logGroupName'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

