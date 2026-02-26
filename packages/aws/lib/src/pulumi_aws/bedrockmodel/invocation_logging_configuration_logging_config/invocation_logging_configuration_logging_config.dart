// ignore_for_file: unused_element, unnecessary_cast

import '../invocation_logging_configuration_logging_config_cloudwatch_config/invocation_logging_configuration_logging_config_cloudwatch_config.dart';
import '../invocation_logging_configuration_logging_config_s3_config/invocation_logging_configuration_logging_config_s3_config.dart';

class InvocationLoggingConfigurationLoggingConfig {
  /// CloudWatch logging configuration. See <span pulumi-lang-nodejs="`cloudwatchConfig`" pulumi-lang-dotnet="`CloudwatchConfig`" pulumi-lang-go="`cloudwatchConfig`" pulumi-lang-python="`cloudwatch_config`" pulumi-lang-yaml="`cloudwatchConfig`" pulumi-lang-java="`cloudwatchConfig`">`cloudwatch_config`</span> Block for details.
  final InvocationLoggingConfigurationLoggingConfigCloudwatchConfig?
      cloudwatchConfig;

  /// Set to include embeddings data in the log delivery. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? embeddingDataDeliveryEnabled;

  /// Set to include image data in the log delivery. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? imageDataDeliveryEnabled;

  /// S3 configuration for storing log data. See <span pulumi-lang-nodejs="`s3Config`" pulumi-lang-dotnet="`S3Config`" pulumi-lang-go="`s3Config`" pulumi-lang-python="`s3_config`" pulumi-lang-yaml="`s3Config`" pulumi-lang-java="`s3Config`">`s3_config`</span> Block for details.
  final InvocationLoggingConfigurationLoggingConfigS3Config? s3Config;

  /// Set to include text data in the log delivery. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? textDataDeliveryEnabled;

  /// Set to include text data in the log delivery. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? videoDataDeliveryEnabled;

  InvocationLoggingConfigurationLoggingConfig({
    this.cloudwatchConfig,
    this.embeddingDataDeliveryEnabled,
    this.imageDataDeliveryEnabled,
    this.s3Config,
    this.textDataDeliveryEnabled,
    this.videoDataDeliveryEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchConfigValue = cloudwatchConfig;
    if (cloudwatchConfigValue != null) {
      map['cloudwatchConfig'] = cloudwatchConfigValue.toMap();
    }
    final embeddingDataDeliveryEnabledValue = embeddingDataDeliveryEnabled;
    if (embeddingDataDeliveryEnabledValue != null) {
      map['embeddingDataDeliveryEnabled'] = embeddingDataDeliveryEnabledValue;
    }
    final imageDataDeliveryEnabledValue = imageDataDeliveryEnabled;
    if (imageDataDeliveryEnabledValue != null) {
      map['imageDataDeliveryEnabled'] = imageDataDeliveryEnabledValue;
    }
    final s3ConfigValue = s3Config;
    if (s3ConfigValue != null) {
      map['s3Config'] = s3ConfigValue.toMap();
    }
    final textDataDeliveryEnabledValue = textDataDeliveryEnabled;
    if (textDataDeliveryEnabledValue != null) {
      map['textDataDeliveryEnabled'] = textDataDeliveryEnabledValue;
    }
    final videoDataDeliveryEnabledValue = videoDataDeliveryEnabled;
    if (videoDataDeliveryEnabledValue != null) {
      map['videoDataDeliveryEnabled'] = videoDataDeliveryEnabledValue;
    }
    return map;
  }

  factory InvocationLoggingConfigurationLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return InvocationLoggingConfigurationLoggingConfig(
      cloudwatchConfig: map['cloudwatchConfig'] == null
          ? null
          : InvocationLoggingConfigurationLoggingConfigCloudwatchConfig.fromMap(
              (map['cloudwatchConfig'] as Map).cast<String, dynamic>()),
      embeddingDataDeliveryEnabled: map['embeddingDataDeliveryEnabled'] == null
          ? null
          : map['embeddingDataDeliveryEnabled'] as bool,
      imageDataDeliveryEnabled: map['imageDataDeliveryEnabled'] == null
          ? null
          : map['imageDataDeliveryEnabled'] as bool,
      s3Config: map['s3Config'] == null
          ? null
          : InvocationLoggingConfigurationLoggingConfigS3Config.fromMap(
              (map['s3Config'] as Map).cast<String, dynamic>()),
      textDataDeliveryEnabled: map['textDataDeliveryEnabled'] == null
          ? null
          : map['textDataDeliveryEnabled'] as bool,
      videoDataDeliveryEnabled: map['videoDataDeliveryEnabled'] == null
          ? null
          : map['videoDataDeliveryEnabled'] as bool,
    );
  }
}
