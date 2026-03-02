// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_snowflake_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake {
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> intermediateBucketName;
  final pulumi.Input<String> object;

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
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'intermediateBucketName': intermediateBucketName,
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake(
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix'] as String).input(),
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      intermediateBucketName: (map['intermediateBucketName'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

