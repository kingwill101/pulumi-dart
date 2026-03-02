// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config_kinesis_video_stream_config_encryption_config.dart';

class GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig {
  /// The encryption configuration. Documented below.
  final pulumi.Input<List<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig>> encryptionConfigs;
  /// The prefix of the video stream. Minimum length of `1`. Maximum length of `128`. When read from the state, the value returned is `<prefix>-connect-<connect_instance_alias>-contact-` since the API appends additional details to the `prefix`.
  final pulumi.Input<String> prefix;
  /// The number of hours to retain the data in a data store associated with the stream. Minimum value of `0`. Maximum value of `87600`. A value of `0` indicates that the stream does not persist data.
  final pulumi.Input<int> retentionPeriodHours;

  /// Creates a new [GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig].
  /// [encryptionConfigs] The encryption configuration. Documented below.
  /// [prefix] The prefix of the video stream. Minimum length of `1`. Maximum length of `128`. When read from the state, the value returned is `<prefix>-connect-<connect_instance_alias>-contact-` since the API appends additional details to the `prefix`.
  /// [retentionPeriodHours] The number of hours to retain the data in a data store associated with the stream. Minimum value of `0`. Maximum value of `87600`. A value of `0` indicates that the stream does not persist data.
  GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig({
    required this.encryptionConfigs,
    required this.prefix,
    required this.retentionPeriodHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfigs': pulumi.Input.mapInputValue<List<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': prefix,
      'retentionPeriodHours': retentionPeriodHours,
    };
  }

  factory GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig(
      encryptionConfigs: (pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig>(map['encryptionConfigs']!, (value) => GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfigEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefix: (map['prefix'] as String).input(),
      retentionPeriodHours: (map['retentionPeriodHours'] as int).input(),
    );
  }
}

