// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_elasticsearch_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_elasticsearch_configuration_vpc_config.dart';

class FirehoseDeliveryStreamElasticsearchConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final pulumi.Input<int>? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The endpoint to use when communicating with the cluster. Conflicts with `domain_arn`.
  final pulumi.Input<String>? clusterEndpoint;
  /// The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `cluster_endpoint`.
  final pulumi.Input<String>? domainArn;
  /// The Elasticsearch index name.
  final pulumi.Input<String> indexName;
  /// The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  final pulumi.Input<String>? indexRotationPeriod;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to Amazon Elasticsearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`, and `DescribeElasticsearchDomainConfig`.  The pattern needs to be `arn:.*`.
  final pulumi.Input<String> roleArn;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration> s3Configuration;
  /// The Elasticsearch type name with maximum length of 100 characters.
  final pulumi.Input<String>? typeName;
  /// The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. See `vpc_config` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig>? vpcConfig;

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
    return <String, dynamic>{
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'clusterEndpoint': ?clusterEndpoint,
      'domainArn': ?domainArn,
      'indexName': indexName,
      'indexRotationPeriod': ?indexRotationPeriod,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'typeName': ?typeName,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamElasticsearchConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamElasticsearchConfiguration(
      bufferingInterval: map['bufferingInterval'] == null ? null : ((map['bufferingInterval'] as int).input()).input(),
      bufferingSize: map['bufferingSize'] == null ? null : ((map['bufferingSize'] as int).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      clusterEndpoint: map['clusterEndpoint'] == null ? null : ((map['clusterEndpoint'] as String).input()).input(),
      domainArn: map['domainArn'] == null ? null : ((map['domainArn'] as String).input()).input(),
      indexName: (map['indexName'] as String).input(),
      indexRotationPeriod: map['indexRotationPeriod'] == null ? null : ((map['indexRotationPeriod'] as String).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      retryDuration: map['retryDuration'] == null ? null : ((map['retryDuration'] as int).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : ((map['s3BackupMode'] as String).input()).input(),
      s3Configuration: (FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())).input(),
      typeName: map['typeName'] == null ? null : ((map['typeName'] as String).input()).input(),
      vpcConfig: map['vpcConfig'] == null ? null : ((FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

