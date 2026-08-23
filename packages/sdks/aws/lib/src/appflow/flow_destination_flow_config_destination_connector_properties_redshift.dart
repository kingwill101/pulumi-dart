// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_redshift_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift {
  final pulumi.Input<String>? bucketPrefix;
  /// Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig>? errorHandlingConfig;
  /// Intermediate bucket that Amazon AppFlow uses when moving data into Amazon Snowflake.
  final pulumi.Input<String> intermediateBucketName;
  final pulumi.Input<String> object_;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift].
  /// [bucketPrefix] Optional.
  /// [errorHandlingConfig] Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See the `destination_flow_config.destination_connector_properties.zendesk.error_handling_config` Block for details.
  /// [intermediateBucketName] Intermediate bucket that Amazon AppFlow uses when moving data into Amazon Snowflake.
  /// [object_] Required.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift({
    this.bucketPrefix,
    this.errorHandlingConfig,
    required this.intermediateBucketName,
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketPrefix': ?bucketPrefix,
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'intermediateBucketName': intermediateBucketName,
      'object': object_,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift(
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorHandlingConfig: (() { final guardedValue = map['errorHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intermediateBucketName: pulumi.Input.fromValue(map['intermediateBucketName'] as String),
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
