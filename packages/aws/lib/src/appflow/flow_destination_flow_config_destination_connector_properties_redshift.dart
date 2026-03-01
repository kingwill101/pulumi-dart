// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_redshift_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift {
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig?
  errorHandlingConfig;
  final String intermediateBucketName;
  final String object;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift].
  /// [bucketPrefix] Optional.
  /// [errorHandlingConfig] Optional.
  /// [intermediateBucketName] Required.
  /// [object] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift({
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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift(
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
      errorHandlingConfig: map['errorHandlingConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig.fromMap(
              (map['errorHandlingConfig'] as Map).cast<String, dynamic>(),
            ),
      intermediateBucketName: map['intermediateBucketName'] as String,
      object: map['object'] as String,
    );
  }
}
