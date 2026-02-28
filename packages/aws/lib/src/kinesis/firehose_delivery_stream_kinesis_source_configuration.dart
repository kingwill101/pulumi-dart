// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamKinesisSourceConfiguration {
  /// The kinesis stream used as the source of the firehose delivery stream.
  final String kinesisStreamArn;

  /// The ARN of the role that provides access to the source Kinesis stream.
  final String roleArn;

  /// Creates a new [FirehoseDeliveryStreamKinesisSourceConfiguration].
  /// [kinesisStreamArn] The kinesis stream used as the source of the firehose delivery stream.
  /// [roleArn] The ARN of the role that provides access to the source Kinesis stream.
  FirehoseDeliveryStreamKinesisSourceConfiguration({
    required this.kinesisStreamArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kinesisStreamArn'] = kinesisStreamArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamKinesisSourceConfiguration(
      kinesisStreamArn: map['kinesisStreamArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
