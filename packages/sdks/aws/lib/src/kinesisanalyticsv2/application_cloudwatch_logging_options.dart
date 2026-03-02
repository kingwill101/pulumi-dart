// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationCloudwatchLoggingOptions {
  final pulumi.Input<String>? cloudwatchLoggingOptionId;
  /// The ARN of the CloudWatch log stream to receive application messages.
  final pulumi.Input<String> logStreamArn;

  /// Creates a new [ApplicationCloudwatchLoggingOptions].
  /// [cloudwatchLoggingOptionId] Optional.
  /// [logStreamArn] The ARN of the CloudWatch log stream to receive application messages.
  ApplicationCloudwatchLoggingOptions({
    this.cloudwatchLoggingOptionId,
    required this.logStreamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLoggingOptionId': ?cloudwatchLoggingOptionId,
      'logStreamArn': logStreamArn,
    };
  }

  factory ApplicationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationCloudwatchLoggingOptions(
      cloudwatchLoggingOptionId: map['cloudwatchLoggingOptionId'] == null ? null : ((map['cloudwatchLoggingOptionId'] as String).input()).input(),
      logStreamArn: (map['logStreamArn'] as String).input(),
    );
  }
}

