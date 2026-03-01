// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_snowflake_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake {
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig?
  errorHandlingConfig;
  final String intermediateBucketName;
  final String object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake].
  /// [bucketPrefix] Optional.
  /// [errorHandlingConfig] Optional.
  /// [intermediateBucketName] Required.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake({
    this.bucketPrefix,
    this.errorHandlingConfig,
    required this.intermediateBucketName,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPrefix': ?bucketPrefix,
      'errorHandlingConfig': ?errorHandlingConfig == null
          ? null
          : errorHandlingConfig!.toMap(),
      'intermediateBucketName': intermediateBucketName,
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake(
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      intermediateBucketName: map['intermediateBucketName'] as String,
      object: map['object'] as String,
    );
  }
}
