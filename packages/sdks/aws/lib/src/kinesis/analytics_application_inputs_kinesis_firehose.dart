// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsKinesisFirehose {
  /// The ARN of the Kinesis Firehose delivery stream.
  final pulumi.Input<String> resourceArn;
  /// The ARN of the IAM Role used to access the stream.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationInputsKinesisFirehose].
  /// [resourceArn] The ARN of the Kinesis Firehose delivery stream.
  /// [roleArn] The ARN of the IAM Role used to access the stream.
  AnalyticsApplicationInputsKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationInputsKinesisFirehose.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsKinesisFirehose(
      resourceArn: (map['resourceArn'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

