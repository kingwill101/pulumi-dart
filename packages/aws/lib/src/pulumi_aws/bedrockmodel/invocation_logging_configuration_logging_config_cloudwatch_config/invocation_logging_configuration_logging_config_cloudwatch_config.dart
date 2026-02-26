// ignore_for_file: unused_element, unnecessary_cast

import '../invocation_logging_configuration_logging_config_cloudwatch_config_large_data_delivery_s3_config/invocation_logging_configuration_logging_config_cloudwatch_config_large_data_delivery_s3_config.dart';

class InvocationLoggingConfigurationLoggingConfigCloudwatchConfig {
  /// S3 configuration for delivering a large amount of data. See <span pulumi-lang-nodejs="`largeDataDeliveryS3Config`" pulumi-lang-dotnet="`LargeDataDeliveryS3Config`" pulumi-lang-go="`largeDataDeliveryS3Config`" pulumi-lang-python="`large_data_delivery_s3_config`" pulumi-lang-yaml="`largeDataDeliveryS3Config`" pulumi-lang-java="`largeDataDeliveryS3Config`">`large_data_delivery_s3_config`</span> Block for details.
  final InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config?
      largeDataDeliveryS3Config;

  /// Log group name.
  final String logGroupName;

  /// The role ARN.
  final String roleArn;

  InvocationLoggingConfigurationLoggingConfigCloudwatchConfig({
    this.largeDataDeliveryS3Config,
    required this.logGroupName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final largeDataDeliveryS3ConfigValue = largeDataDeliveryS3Config;
    if (largeDataDeliveryS3ConfigValue != null) {
      map['largeDataDeliveryS3Config'] = largeDataDeliveryS3ConfigValue.toMap();
    }
    map['logGroupName'] = logGroupName;
    map['roleArn'] = roleArn;
    return map;
  }

  factory InvocationLoggingConfigurationLoggingConfigCloudwatchConfig.fromMap(
      Map<String, dynamic> map) {
    return InvocationLoggingConfigurationLoggingConfigCloudwatchConfig(
      largeDataDeliveryS3Config: map['largeDataDeliveryS3Config'] == null
          ? null
          : InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config
              .fromMap((map['largeDataDeliveryS3Config'] as Map)
                  .cast<String, dynamic>()),
      logGroupName: map['logGroupName'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
