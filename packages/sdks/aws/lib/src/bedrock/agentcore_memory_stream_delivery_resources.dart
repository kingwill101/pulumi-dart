// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_stream_delivery_resources_resource.dart';

class AgentcoreMemoryStreamDeliveryResources {
  /// List of stream delivery resource configurations. See `resource` below.
  final pulumi.Input<AgentcoreMemoryStreamDeliveryResourcesResource>? resource;

  /// Creates a new [AgentcoreMemoryStreamDeliveryResources].
  /// [resource] List of stream delivery resource configurations. See `resource` below.
  const AgentcoreMemoryStreamDeliveryResources({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?pulumi.Input.mapOptionalInputValue<AgentcoreMemoryStreamDeliveryResourcesResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory AgentcoreMemoryStreamDeliveryResources.fromMap(Map<String, dynamic> map) {
    return AgentcoreMemoryStreamDeliveryResources(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreMemoryStreamDeliveryResourcesResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
