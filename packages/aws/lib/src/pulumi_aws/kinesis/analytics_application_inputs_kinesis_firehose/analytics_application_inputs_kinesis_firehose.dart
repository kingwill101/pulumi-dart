// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsKinesisFirehose {
  /// The ARN of the Kinesis Firehose delivery stream.
  final String resourceArn;

  /// The ARN of the IAM Role used to access the stream.
  final String roleArn;

  AnalyticsApplicationInputsKinesisFirehose({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory AnalyticsApplicationInputsKinesisFirehose.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsKinesisFirehose(
      resourceArn: map['resourceArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
