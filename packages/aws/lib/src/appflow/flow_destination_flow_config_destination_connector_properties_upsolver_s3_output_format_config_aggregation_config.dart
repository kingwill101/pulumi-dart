// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig {
  /// Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are `None` and `SingleFile`.
  final String? aggregationType;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig].
  /// [aggregationType] Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are `None` and `SingleFile`.
  FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig({
    this.aggregationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationTypeValue = aggregationType;
    if (aggregationTypeValue != null) {
      map['aggregationType'] = aggregationTypeValue;
    }
    return map;
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig.fromMap(
      Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesUpsolverS3OutputFormatConfigAggregationConfig(
      aggregationType: map['aggregationType'] == null
          ? null
          : map['aggregationType'] as String,
    );
  }
}
