// ignore_for_file: unused_element, unnecessary_cast

import 'instance_storage_config_storage_config_kinesis_firehose_config.dart';
import 'instance_storage_config_storage_config_kinesis_stream_config.dart';
import 'instance_storage_config_storage_config_kinesis_video_stream_config.dart';
import 'instance_storage_config_storage_config_s3_config.dart';

class InstanceStorageConfigStorageConfig {
  /// A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisFirehoseConfig?
      kinesisFirehoseConfig;

  /// A block that specifies the configuration of the Kinesis data stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisStreamConfig?
      kinesisStreamConfig;

  /// A block that specifies the configuration of the Kinesis video stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisVideoStreamConfig?
      kinesisVideoStreamConfig;

  /// A block that specifies the configuration of S3 Bucket. Documented below.
  final InstanceStorageConfigStorageConfigS3Config? s3Config;

  /// A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  final String storageType;

  /// Creates a new [InstanceStorageConfigStorageConfig].
  /// [kinesisFirehoseConfig] A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  /// [kinesisStreamConfig] A block that specifies the configuration of the Kinesis data stream. Documented below.
  /// [kinesisVideoStreamConfig] A block that specifies the configuration of the Kinesis video stream. Documented below.
  /// [s3Config] A block that specifies the configuration of S3 Bucket. Documented below.
  /// [storageType] A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  InstanceStorageConfigStorageConfig({
    this.kinesisFirehoseConfig,
    this.kinesisStreamConfig,
    this.kinesisVideoStreamConfig,
    this.s3Config,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kinesisFirehoseConfigValue = kinesisFirehoseConfig;
    if (kinesisFirehoseConfigValue != null) {
      map['kinesisFirehoseConfig'] = kinesisFirehoseConfigValue.toMap();
    }
    final kinesisStreamConfigValue = kinesisStreamConfig;
    if (kinesisStreamConfigValue != null) {
      map['kinesisStreamConfig'] = kinesisStreamConfigValue.toMap();
    }
    final kinesisVideoStreamConfigValue = kinesisVideoStreamConfig;
    if (kinesisVideoStreamConfigValue != null) {
      map['kinesisVideoStreamConfig'] = kinesisVideoStreamConfigValue.toMap();
    }
    final s3ConfigValue = s3Config;
    if (s3ConfigValue != null) {
      map['s3Config'] = s3ConfigValue.toMap();
    }
    map['storageType'] = storageType;
    return map;
  }

  factory InstanceStorageConfigStorageConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfig(
      kinesisFirehoseConfig: map['kinesisFirehoseConfig'] == null
          ? null
          : InstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap(
              (map['kinesisFirehoseConfig'] as Map).cast<String, dynamic>()),
      kinesisStreamConfig: map['kinesisStreamConfig'] == null
          ? null
          : InstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap(
              (map['kinesisStreamConfig'] as Map).cast<String, dynamic>()),
      kinesisVideoStreamConfig: map['kinesisVideoStreamConfig'] == null
          ? null
          : InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap(
              (map['kinesisVideoStreamConfig'] as Map).cast<String, dynamic>()),
      s3Config: map['s3Config'] == null
          ? null
          : InstanceStorageConfigStorageConfigS3Config.fromMap(
              (map['s3Config'] as Map).cast<String, dynamic>()),
      storageType: map['storageType'] as String,
    );
  }
}
