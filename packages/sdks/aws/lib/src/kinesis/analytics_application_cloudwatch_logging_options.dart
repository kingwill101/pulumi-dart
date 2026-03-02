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
  AnalyticsApplicationCloudwatchLoggingOptions({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      logStreamArn: (map['logStreamArn'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

