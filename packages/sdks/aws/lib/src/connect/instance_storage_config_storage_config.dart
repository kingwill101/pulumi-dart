// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_storage_config_storage_config_kinesis_firehose_config.dart';
import 'instance_storage_config_storage_config_kinesis_stream_config.dart';
import 'instance_storage_config_storage_config_kinesis_video_stream_config.dart';
import 'instance_storage_config_storage_config_s3_config.dart';

class InstanceStorageConfigStorageConfig {
  /// A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigKinesisFirehoseConfig>? kinesisFirehoseConfig;
  /// A block that specifies the configuration of the Kinesis data stream. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigKinesisStreamConfig>? kinesisStreamConfig;
  /// A block that specifies the configuration of the Kinesis video stream. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigKinesisVideoStreamConfig>? kinesisVideoStreamConfig;
  /// A block that specifies the configuration of S3 Bucket. Documented below.
  final pulumi.Input<InstanceStorageConfigStorageConfigS3Config>? s3Config;
  /// A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  final pulumi.Input<String> storageType;

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
      'kinesisFirehoseConfig': ?pulumi.Input.mapOptionalInputValue<InstanceStorageConfigStorageConfigKinesisFirehoseConfig, Map<String, dynamic>>(kinesisFirehoseConfig, (value) => value.toMap()),
      'kinesisStreamConfig': ?pulumi.Input.mapOptionalInputValue<InstanceStorageConfigStorageConfigKinesisStreamConfig, Map<String, dynamic>>(kinesisStreamConfig, (value) => value.toMap()),
      'kinesisVideoStreamConfig': ?pulumi.Input.mapOptionalInputValue<InstanceStorageConfigStorageConfigKinesisVideoStreamConfig, Map<String, dynamic>>(kinesisVideoStreamConfig, (value) => value.toMap()),
      's3Config': ?pulumi.Input.mapOptionalInputValue<InstanceStorageConfigStorageConfigS3Config, Map<String, dynamic>>(s3Config, (value) => value.toMap()),
      'storageType': storageType,
    };
  }

  factory InstanceStorageConfigStorageConfig.fromMap(Map<String, dynamic> map) {
    return InstanceStorageConfigStorageConfig(
      kinesisFirehoseConfig: (() { final guardedValue = map['kinesisFirehoseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisStreamConfig: (() { final guardedValue = map['kinesisStreamConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisVideoStreamConfig: (() { final guardedValue = map['kinesisVideoStreamConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Config: (() { final guardedValue = map['s3Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceStorageConfigStorageConfigS3Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
    );
  }
}

