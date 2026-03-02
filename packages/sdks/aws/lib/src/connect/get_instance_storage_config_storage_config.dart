// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_storage_config_storage_config_kinesis_firehose_config.dart';
import 'get_instance_storage_config_storage_config_kinesis_stream_config.dart';
import 'get_instance_storage_config_storage_config_kinesis_video_stream_config.dart';
import 'get_instance_storage_config_storage_config_s3_config.dart';

class GetInstanceStorageConfigStorageConfig {
  /// A block that specifies the configuration of the Kinesis Firehose delivery stream. Documented below.
  final pulumi.Input<List<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig>> kinesisFirehoseConfigs;
  /// A block that specifies the configuration of the Kinesis data stream. Documented below.
  final pulumi.Input<List<GetInstanceStorageConfigStorageConfigKinesisStreamConfig>> kinesisStreamConfigs;
  /// A block that specifies the configuration of the Kinesis video stream. Documented below.
  final pulumi.Input<List<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig>> kinesisVideoStreamConfigs;
  /// A block that specifies the configuration of S3 Bucket. Documented below.
  final pulumi.Input<List<GetInstanceStorageConfigStorageConfigS3Config>> s3Configs;
  /// A valid storage type. Valid Values: `S3` | `KINESIS_VIDEO_STREAM` | `KINESIS_STREAM` | `KINESIS_FIREHOSE`.
  final pulumi.Input<String> storageType;

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
      'kinesisFirehoseConfigs': pulumi.Input.mapInputValue<List<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig>, List<Map<String, dynamic>>>(kinesisFirehoseConfigs, (value) => pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kinesisStreamConfigs': pulumi.Input.mapInputValue<List<GetInstanceStorageConfigStorageConfigKinesisStreamConfig>, List<Map<String, dynamic>>>(kinesisStreamConfigs, (value) => pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kinesisVideoStreamConfigs': pulumi.Input.mapInputValue<List<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig>, List<Map<String, dynamic>>>(kinesisVideoStreamConfigs, (value) => pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3Configs': pulumi.Input.mapInputValue<List<GetInstanceStorageConfigStorageConfigS3Config>, List<Map<String, dynamic>>>(s3Configs, (value) => pulumi.Input.encodeList<GetInstanceStorageConfigStorageConfigS3Config, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageType': storageType,
    };
  }

  factory GetInstanceStorageConfigStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceStorageConfigStorageConfig(
      kinesisFirehoseConfigs: (pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig>(map['kinesisFirehoseConfigs']!, (value) => GetInstanceStorageConfigStorageConfigKinesisFirehoseConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kinesisStreamConfigs: (pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisStreamConfig>(map['kinesisStreamConfigs']!, (value) => GetInstanceStorageConfigStorageConfigKinesisStreamConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kinesisVideoStreamConfigs: (pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig>(map['kinesisVideoStreamConfigs']!, (value) => GetInstanceStorageConfigStorageConfigKinesisVideoStreamConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      s3Configs: (pulumi.Input.decodeList<GetInstanceStorageConfigStorageConfigS3Config>(map['s3Configs']!, (value) => GetInstanceStorageConfigStorageConfigS3Config.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageType: (map['storageType'] as String).input(),
    );
  }
}

