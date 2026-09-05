// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceStorageConfigStorageConfigKinesisStreamConfig {
  /// ARN of the data stream.
  final pulumi.Input<String> streamArn;

  /// Creates a new [InstanceStorageConfigStorageConfigKinesisStreamConfig].
  /// [streamArn] ARN of the data stream.
  const InstanceStorageConfigStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamArn': streamArn,
    };
  }

  factory InstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisStreamConfig(
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}
