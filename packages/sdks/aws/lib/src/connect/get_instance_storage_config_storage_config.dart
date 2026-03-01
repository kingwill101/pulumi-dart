// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config_kinesis_firehose_config.dart';
import 'get_instance_storage_config_storage_config_kinesis_stream_config.dart';
import 'get_instance_storage_config_storage_config_kinesis_video_stream_config.dart';
import 'get_instance_storage_config_storage_config_s3_config.dart';

class GetInstanceStorageConfigStorageConfig {
  /// A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  final List<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig> kinesisFirehoseConfigs;
  /// A block that specifies the configuration of the Kinesis data stream. Documented below.
  final List<GetInstanceStorageConfigStorageConfigKinesisStreamConfig> kinesisStreamConfigs;
  /// A block that specifies the configuration of the Kinesis video stream. Documented below.
  final List<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig> kinesisVideoStreamConfigs;
  /// A block that specifies the configuration of S3 Bucket. Documented below.
  final List<GetInstanceStorageConfigStorageConfigS3Config> s3Configs;
  /// A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  final String storageType;

  /// Creates a new [GetInstanceStorageConfigStorageConfig].
  /// [kinesisFirehoseConfigs] A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  /// [kinesisStreamConfigs] A block that specifies the configuration of the Kinesis data stream. Documented below.
  /// [kinesisVideoStreamConfigs] A block that specifies the configuration of the Kinesis video stream. Documented below.
  /// [s3Configs] A block that specifies the configuration of S3 Bucket. Documented below.
  /// [storageType] A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  GetInstanceStorageConfigStorageConfig({
    required this.kinesisFirehoseConfigs,
    required this.kinesisStreamConfigs,
    required this.kinesisVideoStreamConfigs,
    required this.s3Configs,
    required this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesisFirehoseConfigs': pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig, Map<String, dynamic>>(kinesisFirehoseConfigs, (value) => value.toMap()),
      'kinesisStreamConfigs': pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisStreamConfig, Map<String, dynamic>>(kinesisStreamConfigs, (value) => value.toMap()),
      'kinesisVideoStreamConfigs': pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig, Map<String, dynamic>>(kinesisVideoStreamConfigs, (value) => value.toMap()),
      's3Configs': pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigS3Config, Map<String, dynamic>>(s3Configs, (value) => value.toMap()),
      'storageType': storageType,
    };
  }

  factory GetInstanceStorageConfigStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfig(
      kinesisFirehoseConfigs: pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig>(map['kinesisFirehoseConfigs'], (value) => GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap((value as Map).cast<String, dynamic>())),
      kinesisStreamConfigs: pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisStreamConfig>(map['kinesisStreamConfigs'], (value) => GetInstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap((value as Map).cast<String, dynamic>())),
      kinesisVideoStreamConfigs: pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig>(map['kinesisVideoStreamConfigs'], (value) => GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap((value as Map).cast<String, dynamic>())),
      s3Configs: pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigS3Config>(map['s3Configs'], (value) => GetInstanceStorageConfigStorageConfigS3Config.fromMap((value as Map).cast<String, dynamic>())),
      storageType: map['storageType'] as String,
    );
  }
}

