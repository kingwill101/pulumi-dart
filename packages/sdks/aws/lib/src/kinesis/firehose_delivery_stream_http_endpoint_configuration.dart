// ignore_for_file: unused_element, unnecessary_cast

import 'firehose_delivery_stream_http_endpoint_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_request_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_http_endpoint_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamHttpEndpointConfiguration {
  /// The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination.
  final String? accessKey;
  /// Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).
  final int? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  final int? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions? cloudwatchLoggingOptions;
  /// The HTTP endpoint name.
  final String? name;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration? processingConfiguration;
  /// The request configuration.  See `request_configuration` block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration? requestConfiguration;
  /// Total amount of seconds Firehose spends on retries. This duration starts after the initial attempt fails, It does not include the time periods during which Firehose waits for acknowledgment from the specified destination after each attempt. Valid values between `0` and `7200`. Default is `300`.
  final int? retryDuration;
  /// Kinesis Data Firehose uses this IAM role for all the permissions that the delivery stream needs. The pattern needs to be `arn:.*`.
  final String? roleArn;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDataOnly` and `AllData`.  Default value is `FailedDataOnly`.
  final String? s3BackupMode;
  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration s3Configuration;
  /// The Secret Manager Configuration. See `secrets_manager_configuration` block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration? secretsManagerConfiguration;
  /// The HTTP endpoint URL to which Kinesis Firehose sends your data.
  final String url;

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
      'cloudwatchLoggingOptions': ?cloudwatchLoggingOptions == null ? null : cloudwatchLoggingOptions!.toMap(),
      'name': ?name,
      'processingConfiguration': ?processingConfiguration == null ? null : processingConfiguration!.toMap(),
      'requestConfiguration': ?requestConfiguration == null ? null : requestConfiguration!.toMap(),
      'retryDuration': ?retryDuration,
      'roleArn': ?roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': s3Configuration.toMap(),
      'secretsManagerConfiguration': ?secretsManagerConfiguration == null ? null : secretsManagerConfiguration!.toMap(),
      'url': url,
    };
  }

  factory FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfiguration(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      bufferingInterval: map['bufferingInterval'] == null ? null : map['bufferingInterval'] as int,
      bufferingSize: map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      processingConfiguration: map['processingConfiguration'] == null ? null : FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration.fromMap((map['processingConfiguration'] as Map).cast<String, dynamic>()),
      requestConfiguration: map['requestConfiguration'] == null ? null : FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration.fromMap((map['requestConfiguration'] as Map).cast<String, dynamic>()),
      retryDuration: map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      s3BackupMode: map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration: FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration.fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null ? null : FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration.fromMap((map['secretsManagerConfiguration'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}

