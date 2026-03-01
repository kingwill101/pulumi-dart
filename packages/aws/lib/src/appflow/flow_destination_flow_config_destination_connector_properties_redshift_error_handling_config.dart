// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig {
  /// Name of the Amazon S3 bucket.
  final String? bucketName;

  /// Amazon S3 bucket prefix.
  final String? bucketPrefix;

  /// If the flow should fail after the first instance of a failure when attempting to place data in the destination.
  final bool? failOnFirstDestinationError;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig].
  /// [bucketName] Name of the Amazon S3 bucket.
  /// [bucketPrefix] Amazon S3 bucket prefix.
  /// [failOnFirstDestinationError] If the flow should fail after the first instance of a failure when attempting to place data in the destination.
  FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig(
      bucketName: map['bucketName'] == null
          ? null
          : map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
      failOnFirstDestinationError: map['failOnFirstDestinationError'] == null
          ? null
          : map['failOnFirstDestinationError'] as bool,
    );
  }
}
