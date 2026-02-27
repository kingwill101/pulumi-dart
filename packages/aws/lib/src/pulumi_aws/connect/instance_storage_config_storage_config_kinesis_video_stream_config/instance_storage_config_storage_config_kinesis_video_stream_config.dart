// ignore_for_file: unused_element, unnecessary_cast

import '../instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config/instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config.dart';

class InstanceStorageConfigStorageConfigKinesisVideoStreamConfig {
  /// The encryption configuration. Documented below.
  final InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig
      encryptionConfig;

  /// The prefix of the video stream. Minimum length of `1`. Maximum length of `128`. When read from the state, the value returned is `<prefix>-connect-<connect_instance_alias>-contact-` since the API appends additional details to the `prefix`.
  final String prefix;

  /// The number of hours data is retained in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. Minimum value of `0`. Maximum value of `87600`. A value of `0`, indicates that the stream does not persist data.
  final int retentionPeriodHours;

  InstanceStorageConfigStorageConfigKinesisVideoStreamConfig({
    required this.encryptionConfig,
    required this.prefix,
    required this.retentionPeriodHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['prefix'] = prefix;
    map['retentionPeriodHours'] = retentionPeriodHours;
    return map;
  }

  factory InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfigKinesisVideoStreamConfig(
      encryptionConfig:
          InstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig
              .fromMap(
                  (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] as String,
      retentionPeriodHours: map['retentionPeriodHours'] as int,
    );
  }
}
