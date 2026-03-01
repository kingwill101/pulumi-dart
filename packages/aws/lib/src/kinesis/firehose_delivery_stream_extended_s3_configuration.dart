// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_extended_s3_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_extended_s3_configuration_data_format_conversion_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_dynamic_partitioning_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_extended_s3_configuration_s3_backup_configuration.dart';

class FirehoseDeliveryStreamExtendedS3Configuration {
  /// The ARN of the S3 bucket
  final String bucketArn;
  final int? bufferingInterval;
  final int? bufferingSize;
  final FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  /// The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  final String? compressionFormat;

  /// The time zone you prefer. Valid values are `UTC` or a non-3-letter IANA time zones (for example, `America/Los_Angeles`). Default value is `UTC`.
  final String? customTimeZone;

  /// Nested argument for the serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. See `data_format_conversion_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration?
  dataFormatConversionConfiguration;

  /// The configuration for dynamic partitioning. Required when using [dynamic partitioning](https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html). See `dynamic_partitioning_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration?
  dynamicPartitioningConfiguration;

  /// Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  final String? errorOutputPrefix;

  /// The file extension to override the default file extension (for example, `.json`).
  final String? fileExtension;

  /// Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// be used.
  final String? kmsKeyArn;

  /// The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  final String? prefix;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration?
  processingConfiguration;
  final String roleArn;

  /// The configuration for backup in Amazon S3. Required if `s3_backup_mode` is `Enabled`. Supports the same fields as `s3_configuration` object.
  final FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration?
  s3BackupConfiguration;

  /// The Amazon S3 backup mode.  Valid values are `Disabled` and `Enabled`.  Default value is `Disabled`.
  final String? s3BackupMode;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3Configuration].
  /// [bucketArn] The ARN of the S3 bucket
  /// [bufferingInterval] Optional.
  /// [bufferingSize] Optional.
  /// [cloudwatchLoggingOptions] Optional.
  /// [compressionFormat] The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  /// [customTimeZone] The time zone you prefer. Valid values are `UTC` or a non-3-letter IANA time zones (for example, `America/Los_Angeles`). Default value is `UTC`.
  /// [dataFormatConversionConfiguration] Nested argument for the serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. See `data_format_conversion_configuration` block below for details.
  /// [dynamicPartitioningConfiguration] The configuration for dynamic partitioning. Required when using [dynamic partitioning](https://docs.aws.amazon.com/firehose/latest/dev/dynamic-partitioning.html). See `dynamic_partitioning_configuration` block below for details.
  /// [errorOutputPrefix] Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  /// [fileExtension] The file extension to override the default file extension (for example, `.json`).
  /// [kmsKeyArn] Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// [prefix] The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [roleArn] Required.
  /// [s3BackupConfiguration] The configuration for backup in Amazon S3. Required if `s3_backup_mode` is `Enabled`. Supports the same fields as `s3_configuration` object.
  /// [s3BackupMode] The Amazon S3 backup mode.  Valid values are `Disabled` and `Enabled`.  Default value is `Disabled`.
  FirehoseDeliveryStreamExtendedS3Configuration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.compressionFormat,
    this.customTimeZone,
    this.dataFormatConversionConfiguration,
    this.dynamicPartitioningConfiguration,
    this.errorOutputPrefix,
    this.fileExtension,
    this.kmsKeyArn,
    this.prefix,
    this.processingConfiguration,
    required this.roleArn,
    this.s3BackupConfiguration,
    this.s3BackupMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?cloudwatchLoggingOptions == null
          ? null
          : cloudwatchLoggingOptions!.toMap(),
      'compressionFormat': ?compressionFormat,
      'customTimeZone': ?customTimeZone,
      'dataFormatConversionConfiguration':
          ?dataFormatConversionConfiguration == null
          ? null
          : dataFormatConversionConfiguration!.toMap(),
      'dynamicPartitioningConfiguration':
          ?dynamicPartitioningConfiguration == null
          ? null
          : dynamicPartitioningConfiguration!.toMap(),
      'errorOutputPrefix': ?errorOutputPrefix,
      'fileExtension': ?fileExtension,
      'kmsKeyArn': ?kmsKeyArn,
      'prefix': ?prefix,
      'processingConfiguration': ?processingConfiguration == null
          ? null
          : processingConfiguration!.toMap(),
      'roleArn': roleArn,
      's3BackupConfiguration': ?s3BackupConfiguration == null
          ? null
          : s3BackupConfiguration!.toMap(),
      's3BackupMode': ?s3BackupMode,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamExtendedS3Configuration(
      bucketArn: map['bucketArn'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize: map['bufferingSize'] == null
          ? null
          : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions.fromMap(
              (map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>(),
            ),
      compressionFormat: map['compressionFormat'] == null
          ? null
          : map['compressionFormat'] as String,
      customTimeZone: map['customTimeZone'] == null
          ? null
          : map['customTimeZone'] as String,
      dataFormatConversionConfiguration:
          map['dataFormatConversionConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationDataFormatConversionConfiguration.fromMap(
              (map['dataFormatConversionConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      dynamicPartitioningConfiguration:
          map['dynamicPartitioningConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration.fromMap(
              (map['dynamicPartitioningConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      errorOutputPrefix: map['errorOutputPrefix'] == null
          ? null
          : map['errorOutputPrefix'] as String,
      fileExtension: map['fileExtension'] == null
          ? null
          : map['fileExtension'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationProcessingConfiguration.fromMap(
              (map['processingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      roleArn: map['roleArn'] as String,
      s3BackupConfiguration: map['s3BackupConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration.fromMap(
              (map['s3BackupConfiguration'] as Map).cast<String, dynamic>(),
            ),
      s3BackupMode: map['s3BackupMode'] == null
          ? null
          : map['s3BackupMode'] as String,
    );
  }
}
