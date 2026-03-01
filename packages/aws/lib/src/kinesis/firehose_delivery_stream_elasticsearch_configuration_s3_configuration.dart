// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_elasticsearch_configuration_s3_configuration_cloudwatch_logging_options.dart';

class FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration {
  /// The ARN of the S3 bucket
  final String bucketArn;

  /// Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  /// We recommend setting SizeInMBs to a value greater than the amount of data you typically ingest into the delivery stream in 10 seconds. For example, if you typically ingest data at 1 MB/sec set SizeInMBs to be 10 MB or higher.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions?
  cloudwatchLoggingOptions;

  /// The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  final String? compressionFormat;

  /// Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  final String? errorOutputPrefix;

  /// Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// be used.
  final String? kmsKeyArn;

  /// The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  final String? prefix;

  /// The ARN of the AWS credentials.
  final String roleArn;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration].
  /// [bucketArn] The ARN of the S3 bucket
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [compressionFormat] The compression format. If no value is specified, the default is `UNCOMPRESSED`. Other supported values are `GZIP`, `ZIP`, `Snappy`, & `HADOOP_SNAPPY`.
  /// [errorOutputPrefix] Prefix added to failed records before writing them to S3. Not currently supported for `redshift` destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see [Custom Prefixes for Amazon S3 Objects](https://docs.aws.amazon.com/firehose/latest/dev/s3-prefixes.html).
  /// [kmsKeyArn] Specifies the KMS key ARN the stream will use to encrypt data. If not set, no encryption will
  /// [prefix] The "YYYY/MM/DD/HH" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket
  /// [roleArn] The ARN of the AWS credentials.
  FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration({
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
      'cloudwatchLoggingOptions': ?cloudwatchLoggingOptions == null
          ? null
          : cloudwatchLoggingOptions!.toMap(),
      'compressionFormat': ?compressionFormat,
      'errorOutputPrefix': ?errorOutputPrefix,
      'kmsKeyArn': ?kmsKeyArn,
      'prefix': ?prefix,
      'roleArn': roleArn,
    };
  }

  factory FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration(
      bucketArn: map['bucketArn'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize: map['bufferingSize'] == null
          ? null
          : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamElasticsearchConfigurationS3ConfigurationCloudwatchLoggingOptions.fromMap(
              (map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>(),
            ),
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
