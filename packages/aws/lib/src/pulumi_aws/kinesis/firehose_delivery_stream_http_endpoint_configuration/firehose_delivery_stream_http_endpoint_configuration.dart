// ignore_for_file: unused_element, unnecessary_cast

import '../firehose_delivery_stream_http_endpoint_configuration_cloudwatch_logging_options/firehose_delivery_stream_http_endpoint_configuration_cloudwatch_logging_options.dart';
import '../firehose_delivery_stream_http_endpoint_configuration_processing_configuration/firehose_delivery_stream_http_endpoint_configuration_processing_configuration.dart';
import '../firehose_delivery_stream_http_endpoint_configuration_request_configuration/firehose_delivery_stream_http_endpoint_configuration_request_configuration.dart';
import '../firehose_delivery_stream_http_endpoint_configuration_s3_configuration/firehose_delivery_stream_http_endpoint_configuration_s3_configuration.dart';
import '../firehose_delivery_stream_http_endpoint_configuration_secrets_manager_configuration/firehose_delivery_stream_http_endpoint_configuration_secrets_manager_configuration.dart';

class FirehoseDeliveryStreamHttpEndpointConfiguration {
  /// The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination.
  final String? accessKey;

  /// Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes).
  final int? bufferingInterval;

  /// Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5.
  final int? bufferingSize;

  /// The CloudWatch Logging Options for the delivery stream. See <span pulumi-lang-nodejs="`cloudwatchLoggingOptions`" pulumi-lang-dotnet="`CloudwatchLoggingOptions`" pulumi-lang-go="`cloudwatchLoggingOptions`" pulumi-lang-python="`cloudwatch_logging_options`" pulumi-lang-yaml="`cloudwatchLoggingOptions`" pulumi-lang-java="`cloudwatchLoggingOptions`">`cloudwatch_logging_options`</span> block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions?
      cloudwatchLoggingOptions;

  /// The HTTP endpoint name.
  final String? name;

  /// The data processing configuration.  See <span pulumi-lang-nodejs="`processingConfiguration`" pulumi-lang-dotnet="`ProcessingConfiguration`" pulumi-lang-go="`processingConfiguration`" pulumi-lang-python="`processing_configuration`" pulumi-lang-yaml="`processingConfiguration`" pulumi-lang-java="`processingConfiguration`">`processing_configuration`</span> block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration?
      processingConfiguration;

  /// The request configuration.  See <span pulumi-lang-nodejs="`requestConfiguration`" pulumi-lang-dotnet="`RequestConfiguration`" pulumi-lang-go="`requestConfiguration`" pulumi-lang-python="`request_configuration`" pulumi-lang-yaml="`requestConfiguration`" pulumi-lang-java="`requestConfiguration`">`request_configuration`</span> block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration?
      requestConfiguration;

  /// Total amount of seconds Firehose spends on retries. This duration starts after the initial attempt fails, It does not include the time periods during which Firehose waits for acknowledgment from the specified destination after each attempt. Valid values between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`7200`" pulumi-lang-dotnet="`7200`" pulumi-lang-go="`7200`" pulumi-lang-python="`7200`" pulumi-lang-yaml="`7200`" pulumi-lang-java="`7200`">`7200`</span>. Default is <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>.
  final int? retryDuration;

  /// Kinesis Data Firehose uses this IAM role for all the permissions that the delivery stream needs. The pattern needs to be `arn:.*`.
  final String? roleArn;

  /// Defines how documents should be delivered to Amazon S3.  Valid values are `FailedDataOnly` and `AllData`.  Default value is `FailedDataOnly`.
  final String? s3BackupMode;

  /// The S3 Configuration. See <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span> block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration
      s3Configuration;

  /// The Secret Manager Configuration. See <span pulumi-lang-nodejs="`secretsManagerConfiguration`" pulumi-lang-dotnet="`SecretsManagerConfiguration`" pulumi-lang-go="`secretsManagerConfiguration`" pulumi-lang-python="`secrets_manager_configuration`" pulumi-lang-yaml="`secretsManagerConfiguration`" pulumi-lang-java="`secretsManagerConfiguration`">`secrets_manager_configuration`</span> block below for details.
  final FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration?
      secretsManagerConfiguration;

  /// The HTTP endpoint URL to which Kinesis Firehose sends your data.
  final String url;

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
    final map = <String, dynamic>{};
    final accessKeyValue = accessKey;
    if (accessKeyValue != null) {
      map['accessKey'] = accessKeyValue;
    }
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final processingConfigurationValue = processingConfiguration;
    if (processingConfigurationValue != null) {
      map['processingConfiguration'] = processingConfigurationValue.toMap();
    }
    final requestConfigurationValue = requestConfiguration;
    if (requestConfigurationValue != null) {
      map['requestConfiguration'] = requestConfigurationValue.toMap();
    }
    final retryDurationValue = retryDuration;
    if (retryDurationValue != null) {
      map['retryDuration'] = retryDurationValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
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
    map['url'] = url;
    return map;
  }

  factory FirehoseDeliveryStreamHttpEndpointConfiguration.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamHttpEndpointConfiguration(
      accessKey: map['accessKey'] == null ? null : map['accessKey'] as String,
      bufferingInterval: map['bufferingInterval'] == null
          ? null
          : map['bufferingInterval'] as int,
      bufferingSize:
          map['bufferingSize'] == null ? null : map['bufferingSize'] as int,
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null
          ? null
          : FirehoseDeliveryStreamHttpEndpointConfigurationCloudwatchLoggingOptions
              .fromMap((map['cloudwatchLoggingOptions'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      processingConfiguration: map['processingConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamHttpEndpointConfigurationProcessingConfiguration
              .fromMap((map['processingConfiguration'] as Map)
                  .cast<String, dynamic>()),
      requestConfiguration: map['requestConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamHttpEndpointConfigurationRequestConfiguration
              .fromMap(
                  (map['requestConfiguration'] as Map).cast<String, dynamic>()),
      retryDuration:
          map['retryDuration'] == null ? null : map['retryDuration'] as int,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      s3BackupMode:
          map['s3BackupMode'] == null ? null : map['s3BackupMode'] as String,
      s3Configuration:
          FirehoseDeliveryStreamHttpEndpointConfigurationS3Configuration
              .fromMap((map['s3Configuration'] as Map).cast<String, dynamic>()),
      secretsManagerConfiguration: map['secretsManagerConfiguration'] == null
          ? null
          : FirehoseDeliveryStreamHttpEndpointConfigurationSecretsManagerConfiguration
              .fromMap((map['secretsManagerConfiguration'] as Map)
                  .cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}
