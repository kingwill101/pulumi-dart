// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3 {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String>? bucketPrefix;
  /// Configuration that determines how Amazon AppFlow formats the flow output data when Upsolver is used as the destination. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig>? s3OutputFormatConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [s3OutputFormatConfig] Configuration that determines how Amazon AppFlow formats the flow output data when Upsolver is used as the destination. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config` Block for details.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesS3({
    required this.bucketName,
    this.bucketPrefix,
    this.s3OutputFormatConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefix': ?bucketPrefix,
      's3OutputFormatConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig, Map<String, dynamic>>(s3OutputFormatConfig, (value) => value.toMap()),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefix: (() { final guardedValue = map['bucketPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputFormatConfig: (() { final guardedValue = map['s3OutputFormatConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
