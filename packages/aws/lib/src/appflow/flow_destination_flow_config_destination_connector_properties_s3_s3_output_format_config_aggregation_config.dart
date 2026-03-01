// ignore_for_file: unused_element, unnecessary_cast


class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig {
  /// Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are `None` and `SingleFile`.
  final String? aggregationType;
  /// The desired file size, in MB, for each output file that Amazon AppFlow writes to the flow destination. Integer value.
  final int? targetFileSize;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig].
  /// [aggregationType] Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are `None` and `SingleFile`.
  /// [targetFileSize] The desired file size, in MB, for each output file that Amazon AppFlow writes to the flow destination. Integer value.
  FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig({
    this.aggregationType,
    this.targetFileSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': ?aggregationType,
      'targetFileSize': ?targetFileSize,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig(
      aggregationType: map['aggregationType'] == null ? null : map['aggregationType'] as String,
      targetFileSize: map['targetFileSize'] == null ? null : map['targetFileSize'] as int,
    );
  }
}

