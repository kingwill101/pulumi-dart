// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsKinesisStream {
  /// The ARN of the Kinesis Stream.
  final String resourceArn;

  /// The ARN of the IAM Role used to access the stream.
  final String roleArn;

  AnalyticsApplicationInputsKinesisStream({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory AnalyticsApplicationInputsKinesisStream.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsKinesisStream(
      resourceArn: map['resourceArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
