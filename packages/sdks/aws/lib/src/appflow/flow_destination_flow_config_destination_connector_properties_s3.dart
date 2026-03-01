// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3 {
  final String bucketName;
  final String? bucketPrefix;
  final FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig? s3OutputFormatConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [s3OutputFormatConfig] Optional.
  FlowDestinationFlowConfigDestinationConnectorPropertiesS3({
    required this.bucketName,
    this.bucketPrefix,
    this.s3OutputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      's3OutputFormatConfig': ?s3OutputFormatConfig == null ? null : s3OutputFormatConfig!.toMap(),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3(
      bucketName: map['bucketName'] as String,
      bucketPrefix: map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      s3OutputFormatConfig: map['s3OutputFormatConfig'] == null ? null : FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig.fromMap((map['s3OutputFormatConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

