// ignore_for_file: unused_element, unnecessary_cast

import '../flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_aggregation_config/flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_aggregation_config.dart';
import '../flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_prefix_config/flow_destination_flow_config_destination_connector_properties_s3_s3_output_format_config_prefix_config.dart';

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig {
  /// Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig?
      aggregationConfig;

  /// File type that Amazon AppFlow places in the Amazon S3 bucket. Valid values are `CSV`, `JSON`, and `PARQUET`.
  final String? fileType;

  /// Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.
  final FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig?
      prefixConfig;

  /// Whether the data types from the source system need to be preserved (Only valid for `Parquet` file type)
  final bool? preserveSourceDataTyping;

  FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig({
    this.aggregationConfig,
    this.fileType,
    this.prefixConfig,
    this.preserveSourceDataTyping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationConfigValue = aggregationConfig;
    if (aggregationConfigValue != null) {
      map['aggregationConfig'] = aggregationConfigValue.toMap();
    }
    final fileTypeValue = fileType;
    if (fileTypeValue != null) {
      map['fileType'] = fileTypeValue;
    }
    final prefixConfigValue = prefixConfig;
    if (prefixConfigValue != null) {
      map['prefixConfig'] = prefixConfigValue.toMap();
    }
    final preserveSourceDataTypingValue = preserveSourceDataTyping;
    if (preserveSourceDataTypingValue != null) {
      map['preserveSourceDataTyping'] = preserveSourceDataTypingValue;
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfig(
      aggregationConfig: map['aggregationConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig
              .fromMap(
                  (map['aggregationConfig'] as Map).cast<String, dynamic>()),
      fileType: map['fileType'] == null ? null : map['fileType'] as String,
      prefixConfig: map['prefixConfig'] == null
          ? null
          : FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigPrefixConfig
              .fromMap((map['prefixConfig'] as Map).cast<String, dynamic>()),
      preserveSourceDataTyping: map['preserveSourceDataTyping'] == null
          ? null
          : map['preserveSourceDataTyping'] as bool,
    );
  }
}
