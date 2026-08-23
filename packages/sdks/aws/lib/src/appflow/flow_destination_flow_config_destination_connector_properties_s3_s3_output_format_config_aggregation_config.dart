// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig {
  /// Whether Amazon AppFlow aggregates the flow records into a single file, or leaves them unaggregated. Valid values are `None` and `SingleFile`.
  final pulumi.Input<String>? aggregationType;
  /// Desired file size, in MB, for each output file that Amazon AppFlow writes to the flow destination.
  final pulumi.Input<int>? targetFileSize;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig].
  /// [aggregationType] Whether Amazon AppFlow aggregates the flow records into a single file, or leaves them unaggregated. Valid values are `None` and `SingleFile`.
  /// [targetFileSize] Desired file size, in MB, for each output file that Amazon AppFlow writes to the flow destination.
  const FlowDestinationFlowConfigDestinationConnectorPropertiesS3S3OutputFormatConfigAggregationConfig({
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
      aggregationType: (() { final guardedValue = map['aggregationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetFileSize: (() { final guardedValue = map['targetFileSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
