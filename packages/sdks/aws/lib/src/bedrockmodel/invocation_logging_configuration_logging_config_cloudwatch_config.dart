// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_logging_configuration_logging_config_cloudwatch_config_large_data_delivery_s3_config.dart';

class InvocationLoggingConfigurationLoggingConfigCloudwatchConfig {
  /// S3 configuration for delivering a large amount of data. See `large_data_delivery_s3_config` Block for details.
  final pulumi.Input<
    InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config
  >?
  largeDataDeliveryS3Config;

  /// Log group name.
  final pulumi.Input<String> logGroupName;

  /// The role ARN.
  final pulumi.Input<String> roleArn;

  /// Creates a new [InvocationLoggingConfigurationLoggingConfigCloudwatchConfig].
  /// [largeDataDeliveryS3Config] S3 configuration for delivering a large amount of data. See `large_data_delivery_s3_config` Block for details.
  /// [logGroupName] Log group name.
  /// [roleArn] The role ARN.
  InvocationLoggingConfigurationLoggingConfigCloudwatchConfig({
    this.largeDataDeliveryS3Config,
    required this.logGroupName,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'largeDataDeliveryS3Config':
          ?pulumi.Input.mapOptionalInputValue<
            InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config,
            Map<String, dynamic>
          >(largeDataDeliveryS3Config, (value) => value.toMap()),
      'logGroupName': logGroupName,
      'roleArn': roleArn,
    };
  }

  factory InvocationLoggingConfigurationLoggingConfigCloudwatchConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InvocationLoggingConfigurationLoggingConfigCloudwatchConfig(
      largeDataDeliveryS3Config: (() {
        final guardedValue = map['largeDataDeliveryS3Config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InvocationLoggingConfigurationLoggingConfigCloudwatchConfigLargeDataDeliveryS3Config.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
