// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotAliasConversationLogsLogSetting {
  /// The destination where logs are delivered. Options are `CLOUDWATCH_LOGS` or `S3`.
  final pulumi.Input<String> destination;
  /// ARN of the key used to encrypt audio logs in an S3 bucket. This can only be specified when `destination` is set to `S3`. Must be between 20 and 2048 characters in length.
  final pulumi.Input<String?>? kmsKeyArn;
  /// The type of logging that is enabled. Options are `AUDIO` or `TEXT`.
  final pulumi.Input<String> logType;
  /// ARN of the CloudWatch Logs log group or S3 bucket where the logs are delivered. Must be less than or equal to 2048 characters in length.
  final pulumi.Input<String> resourceArn;
  /// The prefix of the S3 object key for `AUDIO` logs or the log stream name for `TEXT` logs.
  final pulumi.Input<String?>? resourcePrefix;

  /// Creates a new [BotAliasConversationLogsLogSetting].
  /// [destination] The destination where logs are delivered. Options are `CLOUDWATCH_LOGS` or `S3`.
  /// [kmsKeyArn] ARN of the key used to encrypt audio logs in an S3 bucket. This can only be specified when `destination` is set to `S3`. Must be between 20 and 2048 characters in length.
  /// [logType] The type of logging that is enabled. Options are `AUDIO` or `TEXT`.
  /// [resourceArn] ARN of the CloudWatch Logs log group or S3 bucket where the logs are delivered. Must be less than or equal to 2048 characters in length.
  /// [resourcePrefix] The prefix of the S3 object key for `AUDIO` logs or the log stream name for `TEXT` logs.
  const BotAliasConversationLogsLogSetting({
    required this.destination,
    this.kmsKeyArn,
    required this.logType,
    required this.resourceArn,
    this.resourcePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'kmsKeyArn': ?kmsKeyArn,
      'logType': logType,
      'resourceArn': resourceArn,
      'resourcePrefix': ?resourcePrefix,
    };
  }

  factory BotAliasConversationLogsLogSetting.fromMap(Map<String, dynamic> map) {
    return BotAliasConversationLogsLogSetting(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logType: pulumi.Input.fromValue(map['logType'] as String),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      resourcePrefix: (() { final guardedValue = map['resourcePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
