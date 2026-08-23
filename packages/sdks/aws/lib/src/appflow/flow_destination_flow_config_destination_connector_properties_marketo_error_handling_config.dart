// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig {
  final pulumi.Input<String>? bucketName;
  final pulumi.Input<String>? bucketPrefix;
  /// Whether to fail the flow after the first instance of a failure when attempting to place data in the destination.
  final pulumi.Input<bool>? failOnFirstDestinationError;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig].
  /// [bucketName] Optional.
  /// [bucketPrefix] Optional.
  /// [failOnFirstDestinationError] Whether to fail the flow after the first instance of a failure when attempting to place data in the destination.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPrefix': ?bucketPrefix,
      'failOnFirstDestinationError': ?failOnFirstDestinationError,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesMarketoErrorHandlingConfig(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failOnFirstDestinationError: (() { final guardedValue = map['failOnFirstDestinationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
