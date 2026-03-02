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
  FlowDestinationFlowConfigDestinationConnectorPropertiesHoneycodeErrorHandlingConfig({
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
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix'] as String).input(),
      failOnFirstDestinationError: map['failOnFirstDestinationError'] == null ? null : (map['failOnFirstDestinationError'] as bool).input(),
    );
  }
}

