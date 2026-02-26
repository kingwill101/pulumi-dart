// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config/flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver {
  final String bucketName;
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
      s3OutputFormatConfig;

  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver({
    required this.bucketName,
    this.bucketPrefix,
    required this.s3OutputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    map['s3OutputFormatConfig'] = s3OutputFormatConfig.toMap();
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolver(
      bucketName: map['bucketName'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      s3OutputFormatConfig:
          FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig
              .fromMap(
                  (map['s3OutputFormatConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
