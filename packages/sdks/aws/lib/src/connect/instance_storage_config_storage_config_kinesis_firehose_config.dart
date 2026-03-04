// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceStorageConfigStorageConfigKinesisFirehoseConfig {
  /// The Amazon Resource Name (ARN) of the delivery stream.
  final pulumi.Input<String> firehoseArn;

  /// Creates a new [InstanceStorageConfigStorageConfigKinesisFirehoseConfig].
  /// [firehoseArn] The Amazon Resource Name (ARN) of the delivery stream.
  InstanceStorageConfigStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'firehoseArn': firehoseArn};
  }

  factory InstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceStorageConfigStorageConfigKinesisFirehoseConfig(
      firehoseArn: pulumi.Input.fromValue(map['firehoseArn'] as String),
    );
  }
}
