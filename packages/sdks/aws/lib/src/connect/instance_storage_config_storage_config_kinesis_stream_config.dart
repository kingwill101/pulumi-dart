// ignore_for_file: unused_element, unnecessary_cast


class InstanceStorageConfigStorageConfigKinesisStreamConfig {
  /// The Amazon Resource Name (ARN) of the data stream.
  final String streamArn;

  /// Creates a new [InstanceStorageConfigStorageConfigKinesisStreamConfig].
  /// [streamArn] The Amazon Resource Name (ARN) of the data stream.
  InstanceStorageConfigStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamArn': streamArn,
    };
  }

  factory InstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisStreamConfig(
      streamArn: map['streamArn'] as String,
    );
  }
}

