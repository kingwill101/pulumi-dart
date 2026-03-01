// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver {
  final String bucketName;
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
  s3OutputFormatConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [s3OutputFormatConfig] Required.
  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver({
    required this.bucketName,
    this.bucketPrefix,
    required this.s3OutputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      's3OutputFormatConfig': s3OutputFormatConfig.toMap(),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver(
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] == null
          ? null
          : map['bucketPrefix'] as String,
      s3OutputFormatConfig:
          FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig.fromMap(
            (map['s3OutputFormatConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
