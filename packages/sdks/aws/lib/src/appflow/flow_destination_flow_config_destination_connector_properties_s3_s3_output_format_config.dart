// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_aggregation_config.dart';
import 'flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_prefix_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig {
  /// Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig>? aggregationConfig;
  /// File type that Amazon AppFlow places in the Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  final pulumi.Input<String>? fileType;
  /// Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.
  final pulumi.Input<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig>? prefixConfig;
  /// Whether the data types from the source system need to be preserved (Only valid for `Parquet` file type)
  final pulumi.Input<bool>? preserveSourceDataTyping;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig].
  /// [aggregationConfig] Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details.
  /// [fileType] File type that Amazon AppFlow places in the Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  /// [prefixConfig] Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.
  /// [preserveSourceDataTyping] Whether the data types from the source system need to be preserved (Only valid for `Parquet` file type)
  FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig({
    this.aggregationConfig,
    this.fileType,
    this.prefixConfig,
    this.preserveSourceDataTyping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig, Map<String, dynamic>>(aggregationConfig, (value) => value.toMap()),
      'fileType': ?fileType,
      'prefixConfig': ?pulumi.Input.mapOptionalInputValue<FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig, Map<String, dynamic>>(prefixConfig, (value) => value.toMap()),
      'preserveSourceDataTyping': ?preserveSourceDataTyping,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig(
      aggregationConfig: map['aggregationConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig.fromMap((map['aggregationConfig'] as Map).cast<String, dynamic>())).input(),
      fileType: map['fileType'] == null ? null : (map['fileType'] as String).input(),
      prefixConfig: map['prefixConfig'] == null ? null : (FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig.fromMap((map['prefixConfig'] as Map).cast<String, dynamic>())).input(),
      preserveSourceDataTyping: map['preserveSourceDataTyping'] == null ? null : (map['preserveSourceDataTyping'] as bool).input(),
    );
  }
}

