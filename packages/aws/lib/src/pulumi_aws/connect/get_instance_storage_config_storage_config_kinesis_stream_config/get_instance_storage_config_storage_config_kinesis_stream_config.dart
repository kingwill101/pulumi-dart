// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceStorageConfigStorageConfigKinesisStreamConfig {
  /// The Amazon Resource Name (ARN) of the data stream.
  final String streamArn;

  GetInstanceStorageConfigStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['streamArn'] = streamArn;
    return map;
  }

  factory GetInstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigKinesisStreamConfig(
      streamArn: map['streamArn'] as String,
    );
  }
}
