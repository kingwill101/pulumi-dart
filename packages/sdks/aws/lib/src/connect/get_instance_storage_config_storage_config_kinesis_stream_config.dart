// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceStorageConfigStorageConfigKinesisStreamConfig {
  /// The Amazon Resource Name (ARN) of the data stream.
  final pulumi.Input<String> streamArn;

  /// Creates a new [GetInstanceStorageConfigStorageConfigKinesisStreamConfig].
  /// [streamArn] The Amazon Resource Name (ARN) of the data stream.
  GetInstanceStorageConfigStorageConfigKinesisStreamConfig({
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'streamArn': streamArn};
  }

  factory GetInstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceStorageConfigStorageConfigKinesisStreamConfig(
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}
