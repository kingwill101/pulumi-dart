// ignore_for_file: unused_element, unnecessary_cast

import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config_aggregation_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_upsolver_s3_output_format_config_prefix_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig {
  /// Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig? aggregationConfig;
  /// File type that Amazon AppFlow places in the Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  final String? fileType;
  /// Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig prefixConfig;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig].
  /// [aggregationConfig] Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details.
  /// [fileType] File type that Amazon AppFlow places in the Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  /// [prefixConfig] Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.
  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig({
    this.aggregationConfig,
    this.fileType,
    required this.prefixConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationConfig': ?aggregationConfig == null ? null : aggregationConfig!.toMap(),
      'fileType': ?fileType,
      'prefixConfig': prefixConfig.toMap(),
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfig(
      aggregationConfig: map['aggregationConfig'] == null ? null : FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig.fromMap((map['aggregationConfig'] as Map).cast<String, dynamic>()),
      fileType: map['fileType'] == null ? null : map['fileType'] as String,
      prefixConfig: FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigPrefixConfig.fromMap((map['prefixConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

