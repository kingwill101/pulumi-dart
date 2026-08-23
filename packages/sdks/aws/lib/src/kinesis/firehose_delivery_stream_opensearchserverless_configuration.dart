// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_opensearchserverless_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_opensearchserverless_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_opensearchserverless_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_opensearchserverless_configuration_vpc_config.dart';

class FirehoseDeliveryStreamOpensearchserverlessConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  final pulumi.Input<int>? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The endpoint to use when communicating with the collection in the Serverless offering for Amazon OpenSearch Service.
  final pulumi.Input<String> collectionEndpoint;
  /// The Serverless offering for Amazon OpenSearch Service index name.
  final pulumi.Input<String> indexName;
  /// The data processing configuration.  See `processingConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to the Serverless offering for Amazon OpenSearch Service, the total amount of time, in seconds between 0 to 7200, during which Kinesis Data Firehose retries delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Serverless offering for Amazon OpenSearch Service Configuration API and for indexing documents.  The pattern needs to be `arn:.*`.
  final pulumi.Input<String> roleArn;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3Configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration> s3Configuration;
  /// The VPC configuration for the delivery stream to connect to OpenSearch Serverless associated with the VPC. See `vpcConfig` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig>? vpcConfig;

  /// Creates a new [FirehoseDeliveryStreamOpensearchserverlessConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 900, before delivering it to the destination.  The default value is 300s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 100, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  /// [collectionEndpoint] The endpoint to use when communicating with the collection in the Serverless offering for Amazon OpenSearch Service.
  /// [indexName] The Serverless offering for Amazon OpenSearch Service index name.
  /// [processingConfiguration] The data processing configuration.  See `processingConfiguration` block below for details.
  /// [retryDuration] After an initial failure to deliver to the Serverless offering for Amazon OpenSearch Service, the total amount of time, in seconds between 0 to 7200, during which Kinesis Data Firehose retries delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to be assumed by Kinesis Data Firehose for calling the Serverless offering for Amazon OpenSearch Service Configuration API and for indexing documents.  The pattern needs to be `arn:.*`.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDocumentsOnly` and `AllDocuments`.  Default value is `FailedDocumentsOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3Configuration` block below for details.
  /// [vpcConfig] The VPC configuration for the delivery stream to connect to OpenSearch Serverless associated with the VPC. See `vpcConfig` block below for details.
  const FirehoseDeliveryStreamOpensearchserverlessConfiguration({
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
    return <String, dynamic>{
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'collectionEndpoint': collectionEndpoint,
      'indexName': indexName,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamOpensearchserverlessConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchserverlessConfiguration(
      bufferingInterval: (() { final guardedValue = map['bufferingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufferingSize: (() { final guardedValue = map['bufferingSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchserverlessConfigurationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      collectionEndpoint: pulumi.Input.fromValue(map['collectionEndpoint'] as String),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchserverlessConfigurationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryDuration: (() { final guardedValue = map['retryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3BackupMode: (() { final guardedValue = map['s3BackupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Configuration: pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchserverlessConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamOpensearchserverlessConfigurationVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
