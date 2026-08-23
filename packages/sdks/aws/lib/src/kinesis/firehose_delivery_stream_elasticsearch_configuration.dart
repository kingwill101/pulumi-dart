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
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The endpoint to use when communicating with the cluster. Conflicts with `domainArn`.
  final pulumi.Input<String>? clusterEndpoint;
  /// The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `clusterEndpoint`.
  final pulumi.Input<String>? domainArn;
  /// The Elasticsearch index name.
  final pulumi.Input<String> indexName;
  /// The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  final pulumi.Input<String>? indexRotationPeriod;
  /// The data processing configuration.  See `processingConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to Amazon Elasticsearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`, and `DescribeElasticsearchDomainConfig`.  The pattern needs to be `arn:.*`.
  final pulumi.Input<String> roleArn;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3Configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration> s3Configuration;
  /// The Elasticsearch type name with maximum length of 100 characters.
  final pulumi.Input<String>? typeName;
  /// The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. See `vpcConfig` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig>? vpcConfig;

  /// Creates a new [FirehoseDeliveryStreamElasticsearchConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  /// [clusterEndpoint] The endpoint to use when communicating with the cluster. Conflicts with `domainArn`.
  /// [domainArn] The ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `clusterEndpoint`.
  /// [indexName] The Elasticsearch index name.
  /// [indexRotationPeriod] The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  /// [processingConfiguration] The data processing configuration.  See `processingConfiguration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Amazon Elasticsearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeElasticsearchDomain`, `DescribeElasticsearchDomains`, and `DescribeElasticsearchDomainConfig`.  The pattern needs to be `arn:.*`.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3Configuration` block below for details.
  /// [typeName] The Elasticsearch type name with maximum length of 100 characters.
  /// [vpcConfig] The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. See `vpcConfig` block below for details.
  const FirehoseDeliveryStreamElasticsearchConfiguration({
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
      bufferingInterval: (() { final guardedValue = map['bufferingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufferingSize: (() { final guardedValue = map['bufferingSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamElasticsearchConfigurationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterEndpoint: (() { final guardedValue = map['clusterEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainArn: (() { final guardedValue = map['domainArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      indexRotationPeriod: (() { final guardedValue = map['indexRotationPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamElasticsearchConfigurationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryDuration: (() { final guardedValue = map['retryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3BackupMode: (() { final guardedValue = map['s3BackupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Configuration: pulumi.Input.fromValue(FirehoseDeliveryStreamElasticsearchConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamElasticsearchConfigurationVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
