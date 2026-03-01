// ignore_for_file: unused_element, unnecessary_cast


class GetCloudFormationTypeLoggingConfig {
  /// Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  final String logGroupName;
  /// ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  final String logRoleArn;

  /// Creates a new [GetCloudFormationTypeLoggingConfig].
  /// [logGroupName] Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  /// [logRoleArn] ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  GetCloudFormationTypeLoggingConfig({
    required this.logGroupName,
    required this.logRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'logRoleArn': logRoleArn,
    };
  }

  factory GetCloudFormationTypeLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationTypeLoggingConfig(
      logGroupName: map['logGroupName'] as String,
      logRoleArn: map['logRoleArn'] as String,
    );
  }
}

