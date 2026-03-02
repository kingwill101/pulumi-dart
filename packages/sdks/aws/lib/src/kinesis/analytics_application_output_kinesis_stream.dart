// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationOutputKinesisStream {
  /// The ARN of the Kinesis Stream.
  final pulumi.Input<String> resourceArn;
  /// The ARN of the IAM Role used to access the stream.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationOutputKinesisStream].
  /// [resourceArn] The ARN of the Kinesis Stream.
  /// [roleArn] The ARN of the IAM Role used to access the stream.
  AnalyticsApplicationOutputKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationOutputKinesisStream.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutputKinesisStream(
      resourceArn: (map['resourceArn'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

