// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig {
  /// Name of the Amazon S3 bucket.
  final String? bucketName;

  /// Amazon S3 bucket prefix.
  final String? bucketPrefix;

  /// If the flow should fail after the first instance of a failure when attempting to place data in the destination.
  final bool? failOnFirstDestinationError;

  FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
    this.failOnFirstDestinationError,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final failOnFirstDestinationErrorValue = failOnFirstDestinationError;
    if (failOnFirstDestinationErrorValue != null) {
      map['failOnFirstDestinationError'] = failOnFirstDestinationErrorValue;
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataErrorHandlingConfig(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      failOnFirstDestinationError: map['failOnFirstDestinationError'] == null
          ? null
          : map['failOnFirstDestinationError'] as bool,
    );
  }
}
