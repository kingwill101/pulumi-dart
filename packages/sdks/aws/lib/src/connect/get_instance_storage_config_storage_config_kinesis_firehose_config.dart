// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig {
  /// The Amazon Resource Name (ARN) of the delivery stream.
  final pulumi.Input<String> firehoseArn;

  /// Creates a new [GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig].
  /// [firehoseArn] The Amazon Resource Name (ARN) of the delivery stream.
  const GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig({
    required this.firehoseArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firehoseArn': firehoseArn,
    };
  }

  factory GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig(
      firehoseArn: pulumi.Input.fromValue(map['firehoseArn'] as String),
    );
  }
}

