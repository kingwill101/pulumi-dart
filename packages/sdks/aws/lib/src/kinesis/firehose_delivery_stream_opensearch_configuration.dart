// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_opensearch_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_opensearch_configuration_document_id_options.dart';
import 'firehose_delivery_stream_opensearch_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_opensearch_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_opensearch_configuration_vpc_config.dart';

class FirehoseDeliveryStreamOpensearchConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final pulumi.Input<int?>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final pulumi.Input<int?>? bufferingSize;
  /// CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions?>? cloudwatchLoggingOptions;
  /// Endpoint to use when communicating with the cluster. Conflicts with `domainArn`.
  final pulumi.Input<String?>? clusterEndpoint;
  /// Method for setting up document ID. See `documentIdOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions?>? documentIdOptions;
  /// ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `clusterEndpoint`.
  final pulumi.Input<String?>? domainArn;
  /// OpenSearch index name.
  final pulumi.Input<String> indexName;
  /// OpenSearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  final pulumi.Input<String?>? indexRotationPeriod;
  /// Data processing configuration. See `processingConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration?>? processingConfiguration;
  /// After an initial failure to deliver to Amazon OpenSearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int?>? retryDuration;
  /// ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeDomain`, `DescribeDomains`, and `DescribeDomainConfig`.  The pattern needs to be `arn:.*`.
  final pulumi.Input<String> roleArn;
  /// How documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final pulumi.Input<String?>? s3BackupMode;
  /// S3 Configuration. See `s3Configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfigurationS3Configuration> s3Configuration;
  /// Elasticsearch type name with maximum length of 100 characters. Types are deprecated in OpenSearch_1.1. TypeName must be empty.
  final pulumi.Input<String?>? typeName;
  /// VPC configuration for the delivery stream to connect to OpenSearch associated with the VPC. See `vpcConfig` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchConfigurationVpcConfig?>? vpcConfig;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  /// [clusterEndpoint] Endpoint to use when communicating with the cluster. Conflicts with `domainArn`.
  /// [documentIdOptions] Method for setting up document ID. See `documentIdOptions` block below for details.
  /// [domainArn] ARN of the Amazon ES domain.  The pattern needs to be `arn:.*`.  Conflicts with `clusterEndpoint`.
  /// [indexName] OpenSearch index name.
  /// [indexRotationPeriod] OpenSearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are `NoRotation`, `OneHour`, `OneDay`, `OneWeek`, and `OneMonth`.  The default value is `OneDay`.
  /// [processingConfiguration] Data processing configuration. See `processingConfiguration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Amazon OpenSearch, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [roleArn] ARN of the IAM role to be assumed by Firehose for calling the Amazon ES Configuration API and for indexing documents.  The IAM role must have permission for `DescribeDomain`, `DescribeDomains`, and `DescribeDomainConfig`.  The pattern needs to be `arn:.*`.
  /// [s3BackupMode] How documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  /// [s3Configuration] S3 Configuration. See `s3Configuration` block below for details.
  /// [typeName] Elasticsearch type name with maximum length of 100 characters. Types are deprecated in OpenSearch_1.1. TypeName must be empty.
  /// [vpcConfig] VPC configuration for the delivery stream to connect to OpenSearch associated with the VPC. See `vpcConfig` block below for details.
  const FirehoseDeliveryStreamOpensearchConfiguration({
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
    return <String, dynamic>{
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'clusterEndpoint': ?clusterEndpoint,
      'documentIdOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions, Map<String, dynamic>>(documentIdOptions, (value) => value.toMap()),
      'domainArn': ?domainArn,
      'indexName': indexName,
      'indexRotationPeriod': ?indexRotationPeriod,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamOpensearchConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'typeName': ?typeName,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchConfigurationVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfiguration(
      bufferingInterval: (() { final guardedValue = map['bufferingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bufferingSize: (() { final guardedValue = map['bufferingSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchConfigurationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterEndpoint: (() { final guardedValue = map['clusterEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentIdOptions: (() { final guardedValue = map['documentIdOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainArn: (() { final guardedValue = map['domainArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      indexRotationPeriod: (() { final guardedValue = map['indexRotationPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchConfigurationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryDuration: (() { final guardedValue = map['retryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3BackupMode: (() { final guardedValue = map['s3BackupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Configuration: pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchConfigurationVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
