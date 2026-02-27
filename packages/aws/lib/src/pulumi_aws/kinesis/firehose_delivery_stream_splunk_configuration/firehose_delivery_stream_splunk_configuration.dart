// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_splunk_configuration_cloudwatch_logging_options/firehose_delivery_stream_splunk_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_splunk_configuration_processing_configuration/firehose_delivery_stream_splunk_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_splunk_configuration_s3_configuration/firehose_delivery_stream_splunk_configuration_s3_configuration.dart';
import '../firehose_delivery_stream_splunk_configuration_secrets_manager_configuration/firehose_delivery_stream_splunk_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamSplunkConfiguration {
  /// Buffer incoming data for the specified period of time, in seconds between 0 to 60, before delivering it to the destination.  The default value is 60s.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 to 5, before delivering it to the destination.  The default value is 5MB.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data.
  final int? hecAcknowledgmentTimeout;

  /// The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data.
  final String hecEndpoint;

  /// The HEC endpoint type. Valid values are `Raw` or `Event`. The default value is `Raw`.
  final String? hecEndpointType;

  /// The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint. This value is required if `secrets_manager_configuration` is not provided.
  final String? hecToken;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration?
      processingConfiguration;

  /// After an initial failure to deliver to Splunk, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final int? retryDuration;

  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedEventsOnly` and `AllEvents`.  Default value is `FailedEventsOnly`.
  /// `secrets_manager_configuration` - (Optional) The Secrets Manager configuration. See `secrets_manager_configuration` block below for details. This value is required if `hec_token` is not provided.
  final String? s3BackupMode;

  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamSplunkConfigurationS3Configuration
      s3Configuration;
  final FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration?
      secretsManagerConfiguration;

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
    final hecAcknowledgmentTimeoutValue = hecAcknowledgmentTimeout;
    if (hecAcknowledgmentTimeoutValue != null) {
      map['hecAcknowledgmentTimeout'] = hecAcknowledgmentTimeoutValue;
    }
    map['hecEndpoint'] = hecEndpoint;
    final hecEndpointTypeValue = hecEndpointType;
    if (hecEndpointTypeValue != null) {
      map['hecEndpointType'] = hecEndpointTypeValue;
    }
    final hecTokenValue = hecToken;
    if (hecTokenValue != null) {
      map['hecToken'] = hecTokenValue;
    }
    final processingConfigurationValue = processingConfiguration;
    if (processingConfigurationValue != null) {
      map['processingConfiguration'] = processingConfigurationValue.toMap();
    }
    final retryDurationValue = retryDuration;
    if (retryDurationValue != null) {
      map['retryDuration'] = retryDurationValue;
    }
    final s3BackupModeValue = s3BackupMode;
    if (s3BackupModeValue != null) {
      map['s3BackupMode'] = s3BackupModeValue;
    }
    map['s3Configuration'] = s3Configuration.toMap();
    final secretsManagerConfigurationValue = secretsManagerConfiguration;
    if (secretsManagerConfigurationValue != null) {
      map['secretsManagerConfiguration'] =
          secretsManagerConfigurationValue.toMap();
    }
    return map;
  }

  factory FirehoseDeliveryStreamSplunkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSplunkConfiguration(
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      hecAcknowledgmentTimeout: map['hecAcknowledgmentTimeout'] == null
          ? null
          : map['hecAcknowledgmentTimeout'] as int,
      hecEndpoint: map['hecEndpoint'] as String,
      hecEndpointType: map['hecEndpointType'] == null
          ? null
          : map['hecEndpointType'] as String,
      hecToken: map['hecToken'] == null ? null : map['hecToken'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamSplunkConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration
              .fromMap((map['secretsManagerConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
