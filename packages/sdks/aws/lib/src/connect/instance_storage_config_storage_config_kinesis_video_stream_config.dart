// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigKinesisVideoStreamConfig {
  /// The encryption configuration. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig> encryptionConfig;
  /// The prefix of the video stream. Minimum length of `1`. Maximum length of `128`. When read from the state, the value returned is `&lt;prefix&gt;-connect-&lt;connect_instance_alias&gt;-contact-` since the API appends additional details to the `prefix`.
  final pulumi.Input<String> prefix;
  /// The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of `0`. Maximum value of `87600`. A value of `0`, indicates that the stream does not persist data.
  final pulumi.Input<int> retentionPeriodHours;

  /// Creates a new [InstanceStorageConfigStorageConfigKinesisVideoStreamConfig].
  /// [encryptionConfig] The encryption configuration. Documented below.
  /// [prefix] The prefix of the video stream. Minimum length of `1`. Maximum length of `128`. When read from the state, the value returned is `&lt;prefix&gt;-connect-&lt;connect_instance_alias&gt;-contact-` since the API appends additional details to the `prefix`.
  /// [retentionPeriodHours] The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of `0`. Maximum value of `87600`. A value of `0`, indicates that the stream does not persist data.
  const InstanceStorageConfigStorageConfigKinesisVideoStreamConfig({
    required this.encryptionConfig,
    required this.prefix,
    required this.retentionPeriodHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfig': pulumi.Input.mapInputValue<InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'prefix': prefix,
      'retentionPeriodHours': retentionPeriodHours,
    };
  }

  factory InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisVideoStreamConfig(
      encryptionConfig: pulumi.Input.fromValue(InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      retentionPeriodHours: pulumi.Input.fromValue(map['retentionPeriodHours'] as int),
    );
  }
}

