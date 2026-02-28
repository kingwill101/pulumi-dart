// ignore_for_file: unused_element, unnecessary_cast


class InstanceStorageConfigStorageConfigKinesisFirehoseConfig {
  /// The Amazon Resource Name (ARN) of the delivery stream.
  final String firehoseArn;

  /// Creates a new [InstanceStorageConfigStorageConfigKinesisFirehoseConfig].
  /// [firehoseArn] The Amazon Resource Name (ARN) of the delivery stream.
  InstanceStorageConfigStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firehoseArn': firehoseArn,
    };
  }

  factory InstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisFirehoseConfig(
      firehoseArn: map['firehoseArn'] as String,
    );
  }
}

