// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudFormationTypeLoggingConfig {
  /// Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  final pulumi.Input<String> logGroupName;
  /// Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  final pulumi.Input<String> logRoleArn;

  /// Creates a new [CloudFormationTypeLoggingConfig].
  /// [logGroupName] Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers.
  /// [logRoleArn] Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.
  CloudFormationTypeLoggingConfig({
    required this.logGroupName,
    required this.logRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
      'logRoleArn': logRoleArn,
    };
  }

  factory CloudFormationTypeLoggingConfig.fromMap(Map<String, dynamic> map) {
    return CloudFormationTypeLoggingConfig(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      logRoleArn: pulumi.Input.fromValue(map['logRoleArn'] as String),
    );
  }
}

