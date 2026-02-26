// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationOutputKinesisFirehose {
  /// The ARN of the Kinesis Firehose delivery stream.
  final String resourceArn;

  /// The ARN of the IAM Role used to access the stream.
  final String roleArn;

  AnalyticsApplicationOutputKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory AnalyticsApplicationOutputKinesisFirehose.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationOutputKinesisFirehose(
      resourceArn: map['resourceArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
