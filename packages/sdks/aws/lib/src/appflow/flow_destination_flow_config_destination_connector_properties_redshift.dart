// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_redshift_error_handling_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift {
  final pulumi.Input<String>? bucketPrefix;
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig>? errorHandlingConfig;
  final pulumi.Input<String> intermediateBucketName;
  final pulumi.Input<String> object;

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
      'errorHandlingConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig, Map<String, dynamic>>(errorHandlingConfig, (value) => value.toMap()),
      'intermediateBucketName': intermediateBucketName,
      'object': object,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesRedshift(
      bucketPrefix: map['bucketPrefix'] == null ? null : (map['bucketPrefix'] as String).input(),
      errorHandlingConfig: map['errorHandlingConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesRedshiftErrorHandlingConfig.fromMap((map['errorHandlingConfig'] as Map).cast<String, dynamic>())).input(),
      intermediateBucketName: (map['intermediateBucketName'] as String).input(),
      object: (map['object'] as String).input(),
    );
  }
}

