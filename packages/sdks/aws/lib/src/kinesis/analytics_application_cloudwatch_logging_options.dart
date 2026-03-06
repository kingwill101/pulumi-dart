// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationCloudwatchLoggingOptions {
  /// The ARN of the Kinesis Analytics Application.
  final pulumi.Input<String>? id;
  /// The ARN of the CloudWatch Log Stream.
  final pulumi.Input<String> logStreamArn;
  /// The ARN of the IAM Role used to send application messages.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationCloudwatchLoggingOptions].
  /// [id] The ARN of the Kinesis Analytics Application.
  /// [logStreamArn] The ARN of the CloudWatch Log Stream.
  /// [roleArn] The ARN of the IAM Role used to send application messages.
  const AnalyticsApplicationCloudwatchLoggingOptions({
    this.id,
    required this.logStreamArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'logStreamArn': logStreamArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationCloudwatchLoggingOptions(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStreamArn: pulumi.Input.fromValue(map['logStreamArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

