// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_stream_delivery_resources_resource_kinesis.dart';

class AgentcoreMemoryStreamDeliveryResourcesResource {
  /// Kinesis Data Stream configuration. See `kinesis` Block below.
  final pulumi.Input<AgentcoreMemoryStreamDeliveryResourcesResourceKinesis?>? kinesis;

  /// Creates a new [AgentcoreMemoryStreamDeliveryResourcesResource].
  /// [kinesis] Kinesis Data Stream configuration. See `kinesis` Block below.
  const AgentcoreMemoryStreamDeliveryResourcesResource({
    this.kinesis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesis': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStreamDeliveryResourcesResourceKinesis, Map<String, dynamic>>(kinesis, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStreamDeliveryResourcesResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStreamDeliveryResourcesResource(
      kinesis: (() { final guardedValue = map['kinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStreamDeliveryResourcesResourceKinesis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
