// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firehose_delivery_stream_iceberg_configuration_cloudwatch_logging_options.dart';
import 'firehose_delivery_stream_iceberg_configuration_destination_table_configuration.dart';
import 'firehose_delivery_stream_iceberg_configuration_processing_configuration.dart';
import 'firehose_delivery_stream_iceberg_configuration_s3_configuration.dart';

class FirehoseDeliveryStreamIcebergConfiguration {
  final pulumi.Input<bool>? appendOnly;
  /// Buffer incoming data for the specified period of time, in seconds between 0 and 900, before delivering it to the destination. The default value is 300.
  final pulumi.Input<int>? bufferingInterval;
  /// Buffer incoming data to the specified size, in MBs between 1 and 128, before delivering it to the destination. The default value is 5.
  final pulumi.Input<int>? bufferingSize;
  /// Glue catalog ARN identifier of the destination Apache Iceberg Tables. You must specify the ARN in the format `arn:aws:glue:region:account-id:catalog`
  final pulumi.Input<String> catalogArn;
  /// The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// Destination table configurations which Firehose uses to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided. See `destination_table_configuration` block below for details.
  final pulumi.Input<List<FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration>>? destinationTableConfigurations;
  /// The data processing configuration.  See `processing_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration>? processingConfiguration;
  /// The period of time, in seconds between 0 to 7200, during which Firehose retries to deliver data to the specified destination.
  final pulumi.Input<int>? retryDuration;
  /// The ARN of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
  final pulumi.Input<String> roleArn;
  final pulumi.Input<String>? s3BackupMode;
  /// The S3 Configuration. See `s3_configuration` block below for details.
  final pulumi.Input<FirehoseDeliveryStreamIcebergConfigurationS3Configuration> s3Configuration;

  /// Creates a new [FirehoseDeliveryStreamIcebergConfiguration].
  /// [appendOnly] Optional.
  /// [bufferingInterval] Buffer incoming data for the specified period of time, in seconds between 0 and 900, before delivering it to the destination. The default value is 300.
  /// [bufferingSize] Buffer incoming data to the specified size, in MBs between 1 and 128, before delivering it to the destination. The default value is 5.
  /// [catalogArn] Glue catalog ARN identifier of the destination Apache Iceberg Tables. You must specify the ARN in the format `arn:aws:glue:region:account-id:catalog`
  /// [cloudwatchLoggingOptions] The CloudWatch Logging Options for the delivery stream. See `cloudwatch_logging_options` block below for details.
  /// [destinationTableConfigurations] Destination table configurations which Firehose uses to deliver data to Apache Iceberg Tables. Firehose will write data with insert if table specific configuration is not provided. See `destination_table_configuration` block below for details.
  /// [processingConfiguration] The data processing configuration.  See `processing_configuration` block below for details.
  /// [retryDuration] The period of time, in seconds between 0 to 7200, during which Firehose retries to deliver data to the specified destination.
  /// [roleArn] The ARN of the IAM role to be assumed by Firehose for calling Apache Iceberg Tables.
  /// [s3BackupMode] Optional.
  /// [s3Configuration] The S3 Configuration. See `s3_configuration` block below for details.
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
    return <String, dynamic>{
      'appendOnly': ?appendOnly,
      'bufferingInterval': ?bufferingInterval,
      'bufferingSize': ?bufferingSize,
      'catalogArn': catalogArn,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'destinationTableConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration>, List<Map<String, dynamic>>>(destinationTableConfigurations, (value) => pulumi.Input.encodeList<FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingConfiguration': ?pulumi.Input.mapOptionalInputValue<FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration, Map<String, dynamic>>(processingConfiguration, (value) => value.toMap()),
      'retryDuration': ?retryDuration,
      'roleArn': roleArn,
      's3BackupMode': ?s3BackupMode,
      's3Configuration': pulumi.Input.mapInputValue<FirehoseDeliveryStreamIcebergConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory FirehoseDeliveryStreamIcebergConfiguration.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamIcebergConfiguration(
      appendOnly: map['appendOnly'] == null ? null : ((map['appendOnly'] as bool).input()).input(),
      bufferingInterval: map['bufferingInterval'] == null ? null : ((map['bufferingInterval'] as int).input()).input(),
      bufferingSize: map['bufferingSize'] == null ? null : ((map['bufferingSize'] as int).input()).input(),
      catalogArn: (map['catalogArn'] as String).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      destinationTableConfigurations: map['destinationTableConfigurations'] == null ? null : ((pulumi.Input.decodeList<FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration>(map['destinationTableConfigurations']!, (value) => FirehoseDeliveryStreamIcebergConfigurationDestinationTableConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      processingConfiguration: map['processingConfiguration'] == null ? null : ((FirehoseDeliveryStreamIcebergConfigurationProcessingConfiguration.fromMap((map['processingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      retryDuration: map['retryDuration'] == null ? null : ((map['retryDuration'] as int).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      s3BackupMode: map['s3BackupMode'] == null ? null : ((map['s3BackupMode'] as String).input()).input(),
      s3Configuration: (FirehoseDeliveryStreamIcebergConfigurationS3Configuration.fromMap((map['s3Configuration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

