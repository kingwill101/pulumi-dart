// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_splunk_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_splunk_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_splunk_configuration_s3_configuration.dart';
import 'firehose_delivery_stream_splunk_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamSplunkConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 60, before delivering it to the destination.  The default value is 60s.
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 to 5, before delivering it to the destination.  The default value is 5MB.
  final pulumi.Input<int>? bufferingSize;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data.
  final pulumi.Input<int>? hecAcknowledgmentTimeout;
  /// The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data.
  final pulumi.Input<String> hecEndpoint;
  /// The HEC endpoint type. Valid values are `Raw` or `Event`. The default value is `Raw`.
  final pulumi.Input<String>? hecEndpointType;
  /// The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint. This value is required if `secrets_manager_configuration` is not provided.
  final pulumi.Input<String>? hecToken;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to Splunk, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedEventsOnly` and `AllEvents`.  Default value is `FailedEventsOnly`.
  /// `secrets_manager_configuration` - (Optional) The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `hec_token` is not provided.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationS3Configuration> s3Configuration;
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration>? secretsManagerConfiguration;

  /// Creates a new [FirehoseDeliveryStreamSplunkConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 60, before delivering it to the destination.  The default value is 60s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 5, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [hecAcknowledgmentTimeout] The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data.
  /// [hecEndpoint] The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data.
  /// [hecEndpointType] The HEC endpoint type. Valid values are `Raw` or `Event`. The default value is `Raw`.
  /// [hecToken] The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint. This value is required if `secrets_manager_configuration` is not provided.
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Splunk, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedEventsOnly` and `AllEvents`.  Default value is `FailedEventsOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3_configuration` block below for details.
  /// [secretsManagerConfiguration] Optional.
  FirehoseDeliveryStreamSplunkConfiguration({
    this.bufferingInterval,
    this.bufferingSize,
    this.cloudwatchLoggingOptions,
    this.hecAcknowledgmentTimeout,
    required this.hecEndpoint,
    this.hecEndpointType,
    this.hecToken,
    this.processingConfiguration,
    this.retryDuration,
    this.s3BackupMode,
    required this.s3Configuration,
    this.secretsManagerConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'hecAcknowledgmentTimeout': ?hecAcknowledgmentTimeout,
      'hecEndpoint': hecEndpoint,
      'hecEndpointType': ?hecEndpointType,
      'hecToken': ?hecToken,
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamSplunkConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
      'secretsManagerConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration, Map<String, dynamic>>(secretsManagerConfiguration, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamSplunkConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSplunkConfiguration(
      bufferingInterval: map['bufferingInterval'] == null ? null : (map['bufferingInterval'] as int).input(),
      bufferingSize: map['bufferingSize'] == null ? null : (map['bufferingSize'] as int).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : (FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>())).input(),
      hecAcknowledgmentTimeout: map['hecAcknowledgmentTimeout'] == null ? null : (map['hecAcknowledgmentTimeout'] as int).input(),
      hecEndpoint: (map['hecEndpoint'] as String).input(),
      hecEndpointType: map['hecEndpointType'] == null ? null : (map['hecEndpointType'] as String).input(),
      hecToken: map['hecToken'] == null ? null : (map['hecToken'] as String).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : (FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration.fromMap((map['processingConfiguration'] as Map).cast<String, dynamic>())).input(),
      retryDuration: map['retryDuration'] == null ? null : (map['retryDuration'] as int).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : (map['s3BackupMode'] as String).input(),
      s3Configuration: (FirehoseDeliveryStreamSplunkConfigurationS3Configuration.fromMap((map['s3Configuration'] as Map).cast<String, dynamic>())).input(),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null ? null : (FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration.fromMap((map['secretsManagerConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

