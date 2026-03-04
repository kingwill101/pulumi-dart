// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_alias_conversation_logs_log_setting.dart';

class BotAliasConversationLogs {
  /// The Amazon Resource Name (ARN) of the IAM role used to write your logs to CloudWatch Logs or an S3 bucket. Must be between 20 and 2048 characters in length.
  final pulumi.Input<String> iamRoleArn;

  /// The settings for your conversation logs. You can log text, audio, or both. Attributes are documented under log_settings.
  final pulumi.Input<List<BotAliasConversationLogsLogSetting>>? logSettings;

  /// Creates a new [BotAliasConversationLogs].
  /// [iamRoleArn] The Amazon Resource Name (ARN) of the IAM role used to write your logs to CloudWatch Logs or an S3 bucket. Must be between 20 and 2048 characters in length.
  /// [logSettings] The settings for your conversation logs. You can log text, audio, or both. Attributes are documented under log_settings.
  BotAliasConversationLogs({required this.iamRoleArn, this.logSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': iamRoleArn,
      'logSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<BotAliasConversationLogsLogSetting>,
            List<Map<String, dynamic>>
          >(
            logSettings,
            (value) =>
                pulumi.Input.encodeList<
                  BotAliasConversationLogsLogSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BotAliasConversationLogs.fromMap(Map<String, dynamic> map) {
    return BotAliasConversationLogs(
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      logSettings: (() {
        final guardedValue = map['logSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BotAliasConversationLogsLogSetting>(
            guardedValue,
            (value) => BotAliasConversationLogsLogSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
