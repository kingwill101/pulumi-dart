// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iothub_get_iot_hub_resource_event_hub_consumer_group_args_doc}
/// Arguments for getIotHubResourceEventHubConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_iothub_get_iot_hub_resource_event_hub_consumer_group_args_doc}
class GetIotHubResourceEventHubConsumerGroupArgs {
  /// The name of the Event Hub-compatible endpoint in the IoT hub.
  final pulumi.Input<String> eventHubEndpointName;
  /// The name of the consumer group to retrieve.
  final pulumi.Input<String> name;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetIotHubResourceEventHubConsumerGroupArgs].
  /// [eventHubEndpointName] The name of the Event Hub-compatible endpoint in the IoT hub.
  /// [name] The name of the consumer group to retrieve.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  GetIotHubResourceEventHubConsumerGroupArgs({
    required String eventHubEndpointName,
    required String name,
    required String resourceGroupName,
    required String resourceName,
  }) :
      eventHubEndpointName = pulumi.Input.asInput<String>(eventHubEndpointName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubEndpointName': eventHubEndpointName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetIotHubResourceEventHubConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetIotHubResourceEventHubConsumerGroupArgs(
      eventHubEndpointName: map['eventHubEndpointName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

