// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_logging_configuration_logging_config_cloudwatch_config.dart';
import 'invocation_logging_configuration_logging_config_s3_config.dart';

class InvocationLoggingConfigurationLoggingConfig {
  /// CloudWatch logging configuration. See `cloudwatch_config` Block for details.
  final pulumi.Input<
    InvocationLoggingConfigurationLoggingConfigCloudwatchConfig
  >?
  cloudwatchConfig;

  /// Set to include embeddings data in the log delivery. Defaults to `true`.
  final pulumi.Input<bool>? embeddingDataDeliveryEnabled;

  /// Set to include image data in the log delivery. Defaults to `true`.
  final pulumi.Input<bool>? imageDataDeliveryEnabled;

  /// S3 configuration for storing log data. See `s3_config` Block for details.
  final pulumi.Input<InvocationLoggingConfigurationLoggingConfigS3Config>?
  s3Config;

  /// Set to include text data in the log delivery. Defaults to `true`.
  final pulumi.Input<bool>? textDataDeliveryEnabled;

  /// Set to include text data in the log delivery. Defaults to `true`.
  final pulumi.Input<bool>? videoDataDeliveryEnabled;

  /// Creates a new [InvocationLoggingConfigurationLoggingConfig].
  /// [cloudwatchConfig] CloudWatch logging configuration. See `cloudwatch_config` Block for details.
  /// [embeddingDataDeliveryEnabled] Set to include embeddings data in the log delivery. Defaults to `true`.
  /// [imageDataDeliveryEnabled] Set to include image data in the log delivery. Defaults to `true`.
  /// [s3Config] S3 configuration for storing log data. See `s3_config` Block for details.
  /// [textDataDeliveryEnabled] Set to include text data in the log delivery. Defaults to `true`.
  /// [videoDataDeliveryEnabled] Set to include text data in the log delivery. Defaults to `true`.
  InvocationLoggingConfigurationLoggingConfig({
    this.cloudwatchConfig,
    this.embeddingDataDeliveryEnabled,
    this.imageDataDeliveryEnabled,
    this.s3Config,
    this.textDataDeliveryEnabled,
    this.videoDataDeliveryEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InvocationLoggingConfigurationLoggingConfigCloudwatchConfig,
            Map<String, dynamic>
          >(cloudwatchConfig, (value) => value.toMap()),
      'embeddingDataDeliveryEnabled': ?embeddingDataDeliveryEnabled,
      'imageDataDeliveryEnabled': ?imageDataDeliveryEnabled,
      's3Config':
          ?pulumi.Input.mapOptionalInputValue<
            InvocationLoggingConfigurationLoggingConfigS3Config,
            Map<String, dynamic>
          >(s3Config, (value) => value.toMap()),
      'textDataDeliveryEnabled': ?textDataDeliveryEnabled,
      'videoDataDeliveryEnabled': ?videoDataDeliveryEnabled,
    };
  }

  factory InvocationLoggingConfigurationLoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InvocationLoggingConfigurationLoggingConfig(
      cloudwatchConfig: (() {
        final guardedValue = map['cloudwatchConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InvocationLoggingConfigurationLoggingConfigCloudwatchConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      embeddingDataDeliveryEnabled: (() {
        final guardedValue = map['embeddingDataDeliveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageDataDeliveryEnabled: (() {
        final guardedValue = map['imageDataDeliveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      s3Config: (() {
        final guardedValue = map['s3Config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InvocationLoggingConfigurationLoggingConfigS3Config.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textDataDeliveryEnabled: (() {
        final guardedValue = map['textDataDeliveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      videoDataDeliveryEnabled: (() {
        final guardedValue = map['videoDataDeliveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
