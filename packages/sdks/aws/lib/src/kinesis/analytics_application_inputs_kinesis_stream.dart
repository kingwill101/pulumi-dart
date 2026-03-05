// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsKinesisStream {
  /// The ARN of the Kinesis Stream.
  final pulumi.Input<String> resourceArn;
  /// The ARN of the IAM Role used to access the stream.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationInputsKinesisStream].
  /// [resourceArn] The ARN of the Kinesis Stream.
  /// [roleArn] The ARN of the IAM Role used to access the stream.
  AnalyticsApplicationInputsKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationInputsKinesisStream.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsKinesisStream(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

