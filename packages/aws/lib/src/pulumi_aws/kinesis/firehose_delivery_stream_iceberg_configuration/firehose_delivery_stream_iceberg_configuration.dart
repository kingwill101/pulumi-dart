// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firehose_delivery_stream_iceberg_configuration_cloudwatch_logging_options/firehose_delivery_stream_iceberg_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_iceberg_configuration_destination_table_configuration/firehose_delivery_stream_iceberg_configuration_destination_table_configuration.dart';
import '../firehose_delivery_stream_iceberg_configuration_processing_configuration/firehose_delivery_stream_iceberg_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_iceberg_configuration_s3_configuration/firehose_delivery_stream_iceberg_configuration_s3_configuration.dart';

class FirehoseDeliveryStreamIcebergConfiguration {
  final bool? appendOnly;

  /// Buffer incoming data for the specified period of time, in seconds between 0 and 900, before delivering it to the destination. The default value is 300.
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs between 1 and 128, before delivering it to the destination. The default value is 5.
  final int? bufferingSize;

  /// Glue catalog ARN identifier of the destination Apache Iceberg Tables. You must specify the ARN in the format `arn:aws:glue:region:account-id:catalog`
  final String catalogArn;

  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// Destination table configurations which Firehose uses to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided. See `destination_table_configuration` block below for details.
  final List<
          FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration>?
      destinationTableConfigurations;

  /// The data processing configuration.  See `processing_configuration` block below for details.
  final FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration?
      processingConfiguration;

  /// The period of time, in seconds between 0 to 7200, during which Firehose retries to deliver data to the specified destination.
  final int? retryDuration;

  /// The ARN of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
  final String roleArn;
  final String? s3BackupMode;

  /// The S3 Configuration. See `s3_configuration` block below for details.
  final FirehoseDeliveryStreamIcebergConfigurationS3Configuration
      s3Configuration;

  FirehoseDeliveryStreamIcebergConfiguration({
    this.appendOnly,
    this.bufferingInterval,
    this.bufferingSize,
    required this.catalogArn,
    this.cloudwatchLoggingOptions,
    this.destinationTableConfigurations,
    this.processingConfiguration,
    this.retryDuration,
    required this.roleArn,
    this.s3BackupMode,
    required this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appendOnlyValue = appendOnly;
    if (appendOnlyValue != null) {
      map['appendOnly'] = appendOnlyValue;
    }
    final bufferingIntervalValue = bufferingInterval;
    if (bufferingIntervalValue != null) {
      map['bufferingInterval'] = bufferingIntervalValue;
    }
    final bufferingSizeValue = bufferingSize;
    if (bufferingSizeValue != null) {
      map['bufferingSize'] = bufferingSizeValue;
    }
    map['catalogArn'] = catalogArn;
    final cloudwatchLoggingOptionsValue = cloudwatchLoggingOptions;
    if (cloudwatchLoggingOptionsValue != null) {
      map['cloudwatchLoggingOptions'] = cloudwatchLoggingOptionsValue.toMap();
    }
    final destinationTableConfigurationsValue = destinationTableConfigurations;
    if (destinationTableConfigurationsValue != null) {
      map['destinationTableConfigurations'] = Input.encodeList<
              FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration,
              Map<String, dynamic>>(
          destinationTableConfigurationsValue, (value) => value.toMap());
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
    return map;
  }

  factory FirehoseDeliveryStreamIcebergConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamIcebergConfiguration(
      appendOnly: map['appendOnly'] == null ? null : map['appendOnly'] as bool,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      catalogArn: map['catalogArn'] as String,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      destinationTableConfigurations: map['destinationTableConfigurations'] ==
              null
          ? null
          : Input.decodeList<
                  FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration>(
              map['destinationTableConfigurations'],
              (value) =>
                  FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamIcebergConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}
