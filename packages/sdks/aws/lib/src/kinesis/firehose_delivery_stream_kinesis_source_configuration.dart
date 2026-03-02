// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamKinesisSourceConfiguration {
  /// The kinesis stream used as the source of the firehose delivery stream.
  final pulumi.Input<String> kinesisStreamArn;
  /// The ARN of the role that provides access to the source Kinesis stream.
  final pulumi.Input<String> roleArn;

  /// Creates a new [FirehoseDeliveryStreamKinesisSourceConfiguration].
  /// [kinesisStreamArn] The kinesis stream used as the source of the firehose delivery stream.
  /// [roleArn] The ARN of the role that provides access to the source Kinesis stream.
  FirehoseDeliveryStreamKinesisSourceConfiguration({
    required this.kinesisStreamArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisStreamArn': kinesisStreamArn,
      'roleArn': roleArn,
    };
  }

  factory FirehoseDeliveryStreamKinesisSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamKinesisSourceConfiguration(
      kinesisStreamArn: (map['kinesisStreamArn'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

