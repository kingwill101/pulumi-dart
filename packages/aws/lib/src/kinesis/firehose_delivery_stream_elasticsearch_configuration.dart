// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_elasticsearch_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_vpc_config.dart';

class FirehoseDeliveryStreamElasticsearchConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The endpoint to use when communicating with the cluster. Conflicts with `domain_arn`.
  final String? clusterEndpoint;

  /// The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `cluster_endpoint`.
  final String? domainArn;

  /// The Elasticsearch index name.
  final String indexName;

  /// The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  final String? indexRotationPeriod;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration?
      processingConfiguration;

  /// After an initial failure to deliver to Amazon Elasticsearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`, and `DescribeElasticsearchDomainConfig`.  The pattern needs to be `arn:.*`.
  final String roleArn;

  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final String? s3BackupMode;

  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration
      s3Configuration;

  /// The Elasticsearch type name with maximum length of 100 characters.
  final String? typeName;

  /// The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. See `vpc_config` block below for details.
  final FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig? vpcConfig;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [clusterEndpoint] The endpoint to use when communicating with the cluster. Conflicts with `domain_arn`.
  /// [domainArn] The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `cluster_endpoint`.
  /// [indexName] The Elasticsearch index name.
  /// [indexRotationPeriod] The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Amazon Elasticsearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`, and `DescribeElasticsearchDomainConfig`.  The pattern needs to be `arn:.*`.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3_configuration` block below for details.
  /// [typeName] The Elasticsearch type name with maximum length of 100 characters.
  /// [vpcConfig] The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. See `vpc_config` block below for details.
  FirehoseDeliveryStreamElasticsearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.clusterEndpoint,
    this.domainArn,
    required this.indexName,
    this.indexRotationPeriod,
    this.processingConfiguration,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    required this.s3Configuration,
    this.typeName,
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
    final clusterEndpointValue = clusterEndpoint;
    if (clusterEndpointValue != null) {
      map['clusterEndpoint'] = clusterEndpointValue;
    }
    final domainArnValue = domainArn;
    if (domainArnValue != null) {
      map['domainArn'] = domainArnValue;
    }
    map['indexName'] = indexName;
    final indexRotationPeriodValue = indexRotationPeriod;
    if (indexRotationPeriodValue != null) {
      map['indexRotationPeriod'] = indexRotationPeriodValue;
    }
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
    final typeNameValue = typeName;
    if (typeNameValue != null) {
      map['typeName'] = typeNameValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory FirehoseDeliveryStreamElasticsearchConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamElasticsearchConfiguration(
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      clusterEndpoint: map['clusterEndpoint'] == null
          ? null
          : map['clusterEndpoint'] as String,
      domainArn: map['domainArn'] == null ? null : map['domainArn'] as String,
      indexName: map['indexName'] as String,
      indexRotationPeriod: map['indexRotationPeriod'] == null
          ? null
          : map['indexRotationPeriod'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration
              .fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
