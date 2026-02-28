// ignore_for_file: unused_element, unnecessary_cast

class CloudFormationTypeLoggingConfig {
  /// Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  final String logGroupName;

  /// Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  final String logRoleArn;

  /// Creates a new [CloudFormationTypeLoggingConfig].
  /// [logGroupName] Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  /// [logRoleArn] Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  CloudFormationTypeLoggingConfig({
    required this.logGroupName,
    required this.logRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    map['logRoleArn'] = logRoleArn;
    return map;
  }

  factory CloudFormationTypeLoggingConfig.fromMap(Map<String, dynamic> map) {
    return CloudFormationTypeLoggingConfig(
      logGroupName: map['logGroupName'] as String,
      logRoleArn: map['logRoleArn'] as String,
    );
  }
}
