// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_extended_s3_configuration_s3_backup_configuration_cloudwatch_logging_options.dart';

class FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration {
  /// The ARN of the S3 bucket
  final pulumi.Input<String> bucketArn;
  final pulumi.Input<int>? bufferingInterval;
  final pulumi.Input<int>? bufferingSize;
  final pulumi.Input<FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  final pulumi.Input<String>? compressionFormat;
  /// Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  final pulumi.Input<String>? errorOutputPrefix;
  /// Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// be used.
  final pulumi.Input<String>? kmsKeyArn;
  /// The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  final pulumi.Input<String>? prefix;
  final pulumi.Input<String> roleArn;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration].
  /// [bucketArn] The ARN of the S3 bucket
  /// [bufferingInterval] Optional.
  /// [bufferingSize] Optional.
  /// [cloudwatchLoggingOptions] Optional.
  /// [compressionFormat] The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  /// [errorOutputPrefix] Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  /// [kmsKeyArn] Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// [prefix] The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  /// [roleArn] Required.
  FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration({
    required this.bucketArn,
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.compressionFormat,
    this.errorOutputPrefix,
    this.kmsKeyArn,
    this.prefix,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'compressionFormat': ?compressionFormat,
      'errorOutputPrefix': ?errorOutputPrefix,
      'kmsKeyArn': ?kmsKeyArn,
      'prefix': ?prefix,
      'roleArn': roleArn,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfiguration(
      bucketArn: (map['bucketArn'] as String).input(),
      bufferingInterval: map['bufferingInterval'] == null ? null : (map['bufferingInterval'] as int).input(),
      bufferingSize: map['bufferingSize'] == null ? null : (map['bufferingSize'] as int).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : (FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>())).input(),
      compressionFormat: map['compressionFormat'] == null ? null : (map['compressionFormat'] as String).input(),
      errorOutputPrefix: map['errorOutputPrefix'] == null ? null : (map['errorOutputPrefix'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

