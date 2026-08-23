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
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data.
  final pulumi.Input<int>? hecAcknowledgmentTimeout;
  /// The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data.
  final pulumi.Input<String> hecEndpoint;
  /// The HEC endpoint type. Valid values are `Raw` or `Event`. The default value is `Raw`.
  final pulumi.Input<String>? hecEndpointType;
  /// The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint. This value is required if `secretsManagerConfiguration` is not provided.
  final pulumi.Input<String>? hecToken;
  /// The data processing configuration.  See `processingConfiguration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration>? processingConfiguration;
  /// After an initial failure to deliver to Splunk, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  final pulumi.Input<int>? retryDuration;
  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedEventsOnly` and `AllEvents`.  Default value is `FailedEventsOnly`.
  /// `secretsManagerConfiguration` - (Optional) The Secrets Manager configuration. See `secretsManagerConfiguration` block below for details. This value is required if `hecToken` is not provided.
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3Configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationS3Configuration> s3Configuration;
  final pulumi.Input<FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration>? secretsManagerConfiguration;

  /// Creates a new [FirehoseDeliveryStreamSplunkConfiguration].
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 to 60, before delivering it to the destination.  The default value is 60s.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 to 5, before delivering it to the destination.  The default value is 5MB.
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatchLoggingOptions` block below for details.
  /// [hecAcknowledgmentTimeout] The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data.
  /// [hecEndpoint] The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data.
  /// [hecEndpointType] The HEC endpoint type. Valid values are `Raw` or `Event`. The default value is `Raw`.
  /// [hecToken] The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint. This value is required if `secretsManagerConfiguration` is not provided.
  /// [processingConfiguration] The data processing configuration.  See `processingConfiguration` block below for details.
  /// [retryDuration] After an initial failure to deliver to Splunk, the total amount of time, in seconds between 0 to 7200, during which Firehose re-attempts delivery (including the first attempt).  After this time has elapsed, the failed documents are written to Amazon S3.  The default value is 300s.  There will be no retry if the value is 0.
  /// [s3BackupMode] Defines how documents should be delivered to Amazon S3.  Valid values are `FailedEventsOnly` and `AllEvents`.  Default value is `FailedEventsOnly`.
  /// [s3Configuration] The S3 Configuration. See `s3Configuration` block below for details.
  /// [secretsManagerConfiguration] Optional.
  const FirehoseDeliveryStreamSplunkConfiguration({
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
      bufferingInterval: (() { final guardedValue = map['bufferingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bufferingSize: (() { final guardedValue = map['bufferingSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSplunkConfigurationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hecAcknowledgmentTimeout: (() { final guardedValue = map['hecAcknowledgmentTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hecEndpoint: pulumi.Input.fromValue(map['hecEndpoint'] as String),
      hecEndpointType: (() { final guardedValue = map['hecEndpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hecToken: (() { final guardedValue = map['hecToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processingConfiguration: (() { final guardedValue = map['processingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSplunkConfigurationProcessingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryDuration: (() { final guardedValue = map['retryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      s3BackupMode: (() { final guardedValue = map['s3BackupMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Configuration: pulumi.Input.fromValue(FirehoseDeliveryStreamSplunkConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())),
      secretsManagerConfiguration: (() { final guardedValue = map['secretsManagerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirehoseDeliveryStreamSplunkConfigurationSecretsManagerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
