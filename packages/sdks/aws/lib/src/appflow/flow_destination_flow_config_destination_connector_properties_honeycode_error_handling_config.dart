// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig {
  /// Name of the Amazon S3 bucket.
  final pulumi.Input<String>? bucketName;
  /// Amazon S3 bucket prefix.
  final pulumi.Input<String>? bucketPrefix;
  /// If the flow should fail after the first instance of a failure when attempting to place data in the destination.
  final pulumi.Input<bool>? failOnFirstDestinationError;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig].
  /// [bucketName] Name of the Amazon S3 bucket.
  /// [bucketPrefix] Amazon S3 bucket prefix.
  /// [failOnFirstDestinationError] If the flow should fail after the first instance of a failure when attempting to place data in the destination.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failOnFirstDestinationError: (() { final guardedValue = map['failOnFirstDestinationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

