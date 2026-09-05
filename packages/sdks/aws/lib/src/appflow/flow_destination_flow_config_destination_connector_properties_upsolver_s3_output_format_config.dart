// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config_aggregation_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config_prefix_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig {
  /// Aggregation settings that you can use to customize the output format of your flow data. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.aggregation_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig?>? aggregationConfig;
  /// File type that Amazon AppFlow places in the Upsolver Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  final pulumi.Input<String?>? fileType;
  /// Prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.prefix_config` Block for details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig> prefixConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig].
  /// [aggregationConfig] Aggregation settings that you can use to customize the output format of your flow data. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.aggregation_config` Block for details.
  /// [fileType] File type that Amazon AppFlow places in the Upsolver Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  /// [prefixConfig] Prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. See the `destination_flow_config.destination_connector_properties.upsolver.s3_output_format_config.prefix_config` Block for details.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig({
    this.aggregationConfig,
    this.fileType,
    required this.prefixConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig, Map<String, dynamic>>(aggregationConfig, (value) => value.toMap()),
      'fileType': ?fileType,
      'prefixConfig': pulumi.Input.mapInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig, Map<String, dynamic>>(prefixConfig, (value) => value.toMap()),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig(
      aggregationConfig: (() { final guardedValue = map['aggregationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixConfig: pulumi.Input.fromValue(FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig.fromMap((map['prefixConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
