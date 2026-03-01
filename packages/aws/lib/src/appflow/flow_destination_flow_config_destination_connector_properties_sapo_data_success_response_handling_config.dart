// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig {
  /// Name of the Amazon S3 bucket.
  final String? bucketName;

  /// Amazon S3 bucket prefix.
  final String? bucketPrefix;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig].
  /// [bucketName] Name of the Amazon S3 bucket.
  /// [bucketPrefix] Amazon S3 bucket prefix.
  FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig({
    this.bucketName,
    this.bucketPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPrefix': ?bucketPrefix,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesSapoDataSuccessResponseHandlingConfig(
      bucketName: map['bucketName'] == null
          ? null
          : map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
    );
  }
}
