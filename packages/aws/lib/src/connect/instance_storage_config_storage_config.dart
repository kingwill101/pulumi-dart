// ignore_for_file: unused_element, unnecessary_cast

import 'instance_storage_config_storage_config_kinesis_firehose_config.dart';
import 'instance_storage_config_storage_config_kinesis_stream_config.dart';
import 'instance_storage_config_storage_config_kinesis_video_stream_config.dart';
import 'instance_storage_config_storage_config_s3_config.dart';

class InstanceStorageConfigStorageConfig {
  /// A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisFirehoseConfig? kinesisFirehoseConfig;
  /// A block that specifies the configuration of the Kinesis data stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisStreamConfig? kinesisStreamConfig;
  /// A block that specifies the configuration of the Kinesis video stream. Documented below.
  final InstanceStorageConfigStorageConfigKinesisVideoStreamConfig? kinesisVideoStreamConfig;
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
    return <String, dynamic>{
      'kinesisFirehoseConfig': ?kinesisFirehoseConfig == null ? null : kinesisFirehoseConfig!.toMap(),
      'kinesisStreamConfig': ?kinesisStreamConfig == null ? null : kinesisStreamConfig!.toMap(),
      'kinesisVideoStreamConfig': ?kinesisVideoStreamConfig == null ? null : kinesisVideoStreamConfig!.toMap(),
      's3Config': ?s3Config == null ? null : s3Config!.toMap(),
      'storageType': storageType,
    };
  }

  factory InstanceStorageConfigStorageConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfig(
      kinesisFirehoseConfig: map['kinesisFirehoseConfig'] == null ? null : InstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap((map['kinesisFirehoseConfig'] as Map).cast<String, dynamic>()),
      kinesisStreamConfig: map['kinesisStreamConfig'] == null ? null : InstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap((map['kinesisStreamConfig'] as Map).cast<String, dynamic>()),
      kinesisVideoStreamConfig: map['kinesisVideoStreamConfig'] == null ? null : InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap((map['kinesisVideoStreamConfig'] as Map).cast<String, dynamic>()),
      s3Config: map['s3Config'] == null ? null : InstanceStorageConfigStorageConfigS3Config.fromMap((map['s3Config'] as Map).cast<String, dynamic>()),
      storageType: map['storageType'] as String,
    );
  }
}

