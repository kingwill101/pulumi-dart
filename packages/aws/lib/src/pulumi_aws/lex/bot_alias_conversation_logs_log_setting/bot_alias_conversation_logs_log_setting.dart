// ignore_for_file: unused_element, unnecessary_cast

class BotAliasConversationLogsLogSetting {
  /// The destination where logs are delivered. Options are `CLOUDWATCH_LOGS` or `S3`.
  final String destination;

  /// The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket. This can only be specified when <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span> is set to `S3`. Must be between 20 and 2048 characters in length.
  final String? kmsKeyArn;

  /// The type of logging that is enabled. Options are `AUDIO` or `TEXT`.
  final String logType;

  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered. Must be less than or equal to 2048 characters in length.
  final String resourceArn;

  /// The prefix of the S3 object key for `AUDIO` logs or the log stream name for `TEXT` logs.
  final String? resourcePrefix;

  BotAliasConversationLogsLogSetting({
    required this.destination,
    this.kmsKeyArn,
    required this.logType,
    required this.resourceArn,
    this.resourcePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    map['logType'] = logType;
    map['resourceArn'] = resourceArn;
    final resourcePrefixValue = resourcePrefix;
    if (resourcePrefixValue != null) {
      map['resourcePrefix'] = resourcePrefixValue;
    }
    return map;
  }

  factory BotAliasConversationLogsLogSetting.fromMap(Map<String, dynamic> map) {
    return BotAliasConversationLogsLogSetting(
      destination: map['destination'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      logType: map['logType'] as String,
      resourceArn: map['resourceArn'] as String,
      resourcePrefix: map['resourcePrefix'] == null
          ? null
          : map['resourcePrefix'] as String,
    );
  }
}
