// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Smsvoicev2EventDestinationCloudwatchLogsDestination {
  /// ARN of the IAM role that End User Messaging SMS assumes to write to the log group.
  final pulumi.Input<String> iamRoleArn;
  /// ARN of the Amazon CloudWatch log group that receives the events.
  final pulumi.Input<String> logGroupArn;

  /// Creates a new [Smsvoicev2EventDestinationCloudwatchLogsDestination].
  /// [iamRoleArn] ARN of the IAM role that End User Messaging SMS assumes to write to the log group.
  /// [logGroupArn] ARN of the Amazon CloudWatch log group that receives the events.
  const Smsvoicev2EventDestinationCloudwatchLogsDestination({
    required this.iamRoleArn,
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': iamRoleArn,
      'logGroupArn': logGroupArn,
    };
  }

  factory Smsvoicev2EventDestinationCloudwatchLogsDestination.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2EventDestinationCloudwatchLogsDestination(
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      logGroupArn: pulumi.Input.fromValue(map['logGroupArn'] as String),
    );
  }
}
