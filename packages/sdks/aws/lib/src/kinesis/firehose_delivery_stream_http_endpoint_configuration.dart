// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_http_endpoint_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_request_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamHttpEndpointConfiguration {
  /// The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination.
  final pulumi.Input<String>? accessKey;
  /// Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  final pulumi.Input<int>? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The HTTP endpoint name.
  final pulumi.Input<String>? name;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration>? processingConfiguration;
  /// The request configuration.  See `request_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration>? requestConfiguration;
  /// Total amount of seconds Firehose spends on retries. This duration starts after the initial attempt fails, It does not include the time periods during which Firehose waits for acknowledgment from the specified destination after each attempt. Valid values between `0` and `7200`. Default is `300`.
  final pulumi.Input<int>? retryDuration;
  /// Kinesis Data Firehose uses this IAM role for all the permissions that the delivery stream needs. The pattern needs to be `arn:.*`.
  final pulumi.Input<String>? roleArn;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDataOnly` and `AllData`.  Default value is `FailedDataOnly`.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration> s3Configuration;
  /// The Secret Manager Configuration. See `secrets_manager_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration>? secretsManagerConfiguration;
  /// The HTTP endpoint URL to which Kinesis Firehose sends your data.
  final pulumi.Input<String> url;

  /// Creates a new [FirehoseDeliveryStreamHttpEndpointConfiguration].
  /// [accessKey] The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination.
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [name] The HTTP endpoint name.
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [requestConfiguration] The request configuration.  See `request_configuration` block below for details.
  /// [retryDuration] Total amount of seconds Firehose spends on retries. This duration starts after the initial attempt fails, It does not include the time periods during which Firehose waits for acknowledgment from the specified destination after each attempt. Valid values between `0` and `7200`. Default is `300`.
  /// [roleArn] Kinesis Data Firehose uses this IAM role for all the permissions that the delivery stream needs. The pattern needs to be `arn:.*`.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDataOnly` and `AllData`.  Default value is `FailedDataOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3_configuration` block below for details.
  /// [secretsManagerConfiguration] The Secret Manager Configuration. See `secrets_manager_configuration` block below for details.
  /// [url] The HTTP endpoint URL to which Kinesis Firehose sends your data.
  FirehoseDeliveryStreamHttpEndpointConfiguration({
    this.accessKey,
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.name,
    this.processingConfiguration,
    this.requestConfiguration,
    this.retryDuration,
    this.roleArn,
    this.s3BackupMode,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'name': ?name,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'requestConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration, Map<String, dynamic>>(requestConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': ?roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'secretsManagerConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration, Map<String, dynamic>>(secretsManagerConfiguration, (value) => value.toMap()),
      'url': url,
    };
  }

  factory FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfiguration(
      accessKey: map['accessKey'] == null ? null : ((map['accessKey'] as String).input()).input(),
      bufferingInterval: map['bufferingInterval'] == null ? null : ((map['bufferingInterval'] as int).input()).input(),
      bufferingSize: map['bufferingSize'] == null ? null : ((map['bufferingSize'] as int).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      requestConfiguration: map['requestConfiguration'] == null ? null : ((FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration.fromMap((map['requestConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      retryDuration: map['retryDuration'] == null ? null : ((map['retryDuration'] as int).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : ((map['s3BackupMode'] as String).input()).input(),
      s3Configuration: (FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())).input(),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null ? null : ((FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration.fromMap((map['secretsManagerConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      url: (map['url'] as String).input(),
    );
  }
}

