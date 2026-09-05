// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_stream_delivery_resources_resource_kinesis_content_configuration.dart';

class AgentcoreMemoryStreamDeliveryResourcesResourceKinesis {
  /// Content configurations for stream delivery. See `contentConfiguration` Block below.
  final pulumi.Input<AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration> contentConfiguration;
  /// ARN of the Kinesis Data Stream.
  final pulumi.Input<String> dataStreamArn;

  /// Creates a new [AgentcoreMemoryStreamDeliveryResourcesResourceKinesis].
  /// [contentConfiguration] Content configurations for stream delivery. See `contentConfiguration` Block below.
  /// [dataStreamArn] ARN of the Kinesis Data Stream.
  const AgentcoreMemoryStreamDeliveryResourcesResourceKinesis({
    required this.contentConfiguration,
    required this.dataStreamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentConfiguration': pulumi.Input.mapInputValue<AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration, Map<String, dynamic>>(contentConfiguration, (value) => value.toMap()),
      'dataStreamArn': dataStreamArn,
    };
  }

  factory AgentcoreMemoryStreamDeliveryResourcesResourceKinesis.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStreamDeliveryResourcesResourceKinesis(
      contentConfiguration: pulumi.Input.fromValue(AgentcoreMemoryStreamDeliveryResourcesResourceKinesisContentConfiguration.fromMap((map['contentConfiguration']! as Map).cast<String, dynamic>())),
      dataStreamArn: pulumi.Input.fromValue(map['dataStreamArn'] as String),
    );
  }
}
