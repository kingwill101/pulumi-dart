// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig {
  /// The Amazon Resource Name (ARN) of the delivery stream.
  final String firehoseArn;

  /// Creates a new [GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig].
  /// [firehoseArn] The Amazon Resource Name (ARN) of the delivery stream.
  GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firehoseArn'] = firehoseArn;
    return map;
  }

  factory GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig(
      firehoseArn: map['firehoseArn'] as String,
    );
  }
}
