// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_snowflake_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake {
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<
    FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig
  >?
  errorHandlingConfig;
  final pulumi.Input<String> intermediateBucketName;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake].
  /// [bucketPrefix] Optional.
  /// [errorHandlingConfig] Optional.
  /// [intermediateBucketName] Required.
  /// [object_] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake({
    this.bucketPrefix,
    this.errorHandlingConfig,
    required this.intermediateBucketName,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPrefix': ?bucketPrefix,
      'errorHandlingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig,
            Map<String, dynamic>
          >(errorHandlingConfig, (value) => value.toMap()),
      'intermediateBucketName': intermediateBucketName,
      'object': object_,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflake(
      bucketPrefix: (() {
        final guardedValue = map['bucketPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorHandlingConfig: (() {
        final guardedValue = map['errorHandlingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowDestinationFlowConfigDestinationConnectorPropertiesSnowflakeErrorHandlingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      intermediateBucketName: pulumi.Input.fromValue(
        map['intermediateBucketName'] as String,
      ),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
