// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_redshift_configuration_s3_backup_configuration_cloudwatch_logging_options/firehose_delivery_stream_redshift_configuration_s3_backup_configuration_cloudwatch_logging_options.dart';

class FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration {
  /// The ARN of the S3 bucket
  final String bucketArn;
  final int? bufferingInterval;
  final int? bufferingSize;
  final FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  final String? compressionFormat;

  /// Prefix added to failed records before writing them to S3. Not currently supported for <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span> destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  final String? errorOutputPrefix;

  /// Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// be used.
  final String? kmsKeyArn;

  /// The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  final String? prefix;
  final String roleArn;

  FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration({
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
    final map = <String, dynamic>{};
    map['bucketArn'] = bucketArn;
    final bufferingIntervalValue = bufferingInterval;
    if (bufferingIntervalValue != null) {
      map['bufferingInterval'] = bufferingIntervalValue;
    }
    final bufferingSizeValue = bufferingSize;
    if (bufferingSizeValue != null) {
      map['bufferingSize'] = bufferingSizeValue;
    }
    final cloudwatchLoggingOptionsValue = cloudwatchLoggingOptions;
    if (cloudwatchLoggingOptionsValue != null) {
      map['cloudwatchLoggingOptions'] = cloudwatchLoggingOptionsValue.toMap();
    }
    final compressionFormatValue = compressionFormat;
    if (compressionFormatValue != null) {
      map['compressionFormat'] = compressionFormatValue;
    }
    final errorOutputPrefixValue = errorOutputPrefix;
    if (errorOutputPrefixValue != null) {
      map['errorOutputPrefix'] = errorOutputPrefixValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfiguration(
      bucketArn: map['bucketArn'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamRedshiftConfigurationS3BackupConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      compressionFormat: map['compressionFormat'] == null
          ? null
          : map['compressionFormat'] as String,
      errorOutputPrefix: map['errorOutputPrefix'] == null
          ? null
          : map['errorOutputPrefix'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
