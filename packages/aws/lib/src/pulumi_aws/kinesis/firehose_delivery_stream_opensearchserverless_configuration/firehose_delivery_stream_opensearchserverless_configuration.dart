// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_opensearchserverless_configuration_cloudwatch_logging_options/firehose_delivery_stream_opensearchserverless_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_opensearchserverless_configuration_processing_configuration/firehose_delivery_stream_opensearchserverless_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_opensearchserverless_configuration_s3_configuration/firehose_delivery_stream_opensearchserverless_configuration_s3_configuration.dart';
import '../firehose_delivery_stream_opensearchserverless_configuration_vpc_config/firehose_delivery_stream_opensearchserverless_configuration_vpc_config.dart';

class FirehoseDeliveryStreamOpensearchserverlessConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The endpoint to use when communicating with the collection in the Serverless offering for Amazon OpenSearch Service.
  final String collectionEndpoint;

  /// The Serverless offering for Amazon OpenSearch Service index name.
  final String indexName;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration?
      processingConfiguration;

  /// After an initial failure to deliver to the Serverless offering for Amazon OpenSearch Service, the total amount of time, in seconds between 0 to 7200, during which Kinesis Data Firehose retries delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Serverless offering for Amazon OpenSearch Service Configuration API and for indexing documents.  The pattern needs to be `arn:.*`.
  final String roleArn;

  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final String? s3BackupMode;

  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration
      s3Configuration;

  /// The VPC configuration for the delivery stream to connect to OpenSearch Serverless associated with the VPC. See `vpc_config` block below for details.
  final FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig?
      vpcConfig;

  FirehoseDeliveryStreamOpensearchserverlessConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    required this.collectionEndpoint,
    required this.indexName,
    this.processingConfiguration,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    required this.s3Configuration,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    map['collectionEndpoint'] = collectionEndpoint;
    map['indexName'] = indexName;
    final processingConfigurationValue = processingConfiguration;
    if (processingConfigurationValue != null) {
      map['processingConfiguration'] = processingConfigurationValue.toMap();
    }
    final retryDurationValue = retryDuration;
    if (retryDurationValue != null) {
      map['retryDuration'] = retryDurationValue;
    }
    map['roleArn'] = roleArn;
    final s3BackupModeValue = s3BackupMode;
    if (s3BackupModeValue != null) {
      map['s3BackupMode'] = s3BackupModeValue;
    }
    map['s3Configuration'] = s3Configuration.toMap();
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchserverlessConfiguration(
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      collectionEndpoint: map['collectionEndpoint'] as String,
      indexName: map['indexName'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration
              .fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
      vpcConfig: map['vpcConfig'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig
              .fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
