// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_opensearch_configuration_cloudwatch_logging_options/firehose_delivery_stream_opensearch_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_opensearch_configuration_document_id_options/firehose_delivery_stream_opensearch_configuration_document_id_options.dart';
import '../firehose_delivery_stream_opensearch_configuration_processing_configuration/firehose_delivery_stream_opensearch_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_opensearch_configuration_s3_configuration/firehose_delivery_stream_opensearch_configuration_s3_configuration.dart';
import '../firehose_delivery_stream_opensearch_configuration_vpc_config/firehose_delivery_stream_opensearch_configuration_vpc_config.dart';

class FirehoseDeliveryStreamOpensearchConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The endpoint to use when communicating with the cluster. Conflicts with `domain_arn`.
  final String? clusterEndpoint;

  /// The method for setting up document ID. See [`document_id_options` block] below for details.
  final FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions?
      documentIdOptions;

  /// The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `cluster_endpoint`.
  final String? domainArn;

  /// The OpenSearch index name.
  final String indexName;

  /// The OpenSearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  final String? indexRotationPeriod;

  /// The data processing configuration. See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration?
      processingConfiguration;

  /// After an initial failure to deliver to Amazon OpenSearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeDomain`, `DescribeDomains`, and `DescribeDomainConfig`.  The pattern needs to be `arn:.*`.
  final String roleArn;

  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final String? s3BackupMode;

  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamOpensearchConfigurationS3Configuration
      s3Configuration;

  /// The Elasticsearch type name with maximum length of 100 characters. Types are deprecated in OpenSearch_1.1. TypeName must be empty.
  final String? typeName;

  /// The VPC configuration for the delivery stream to connect to OpenSearch associated with the VPC. See `vpc_config` block below for details.
  final FirehoseDeliveryStreamOpensearchConfigurationVpcConfig? vpcConfig;

  FirehoseDeliveryStreamOpensearchConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.clusterEndpoint,
    this.documentIdOptions,
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
    final documentIdOptionsValue = documentIdOptions;
    if (documentIdOptionsValue != null) {
      map['documentIdOptions'] = documentIdOptionsValue.toMap();
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

  factory FirehoseDeliveryStreamOpensearchConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfiguration(
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      clusterEndpoint: map['clusterEndpoint'] == null
          ? null
          : map['clusterEndpoint'] as String,
      documentIdOptions: map['documentIdOptions'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions
              .fromMap(
                  (map['documentIdOptions'] as Map).cast<String, dynamic>()),
      domainArn: map['domainArn'] == null ? null : map['domainArn'] as String,
      indexName: map['indexName'] as String,
      indexRotationPeriod: map['indexRotationPeriod'] == null
          ? null
          : map['indexRotationPeriod'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamOpensearchConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
      typeName: map['typeName'] == null ? null : map['typeName'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : FirehoseDeliveryStreamOpensearchConfigurationVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
