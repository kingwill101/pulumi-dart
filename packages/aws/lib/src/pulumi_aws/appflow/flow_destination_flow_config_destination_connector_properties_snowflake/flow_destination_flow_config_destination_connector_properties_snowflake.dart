// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_snowflake_error_handling_config/flow_destination_flow_config_destination_connector_properties_snowflake_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake {
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig?
      errorHandlingConfig;
  final String intermediateBucketName;
  final String object;

  FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake({
    this.bucketPrefix,
    this.errorHandlingConfig,
    required this.intermediateBucketName,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final errorHandlingConfigValue = errorHandlingConfig;
    if (errorHandlingConfigValue != null) {
      map['errorHandlingConfig'] = errorHandlingConfigValue.toMap();
    }
    map['intermediateBucketName'] = intermediateBucketName;
    map['object'] = object;
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake(
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig
              .fromMap(
                  (map['errorHandlingConfig'] as Map).cast<String, dynamic>()),
      intermediateBucketName: map['intermediateBucketName'] as String,
      object: map['object'] as String,
    );
  }
}
