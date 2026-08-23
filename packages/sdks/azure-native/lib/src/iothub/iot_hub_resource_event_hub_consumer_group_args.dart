// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_consumer_group_name.dart';

/// {@template pulumi_iothub_iot_hub_resource_event_hub_consumer_group_args_doc}
/// The set of arguments for IotHubResourceEventHubConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_iothub_iot_hub_resource_event_hub_consumer_group_args_doc}
class IotHubResourceEventHubConsumerGroupArgs {
  /// The name of the Event Hub-compatible endpoint in the IoT hub.
  final pulumi.Input<String> eventHubEndpointName;
  /// The name of the consumer group to add.
  final pulumi.Input<String>? name;
  /// The EventHub consumer group name.
  final pulumi.Input<EventHubConsumerGroupName> properties;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [IotHubResourceEventHubConsumerGroupArgs].
  /// [eventHubEndpointName] The name of the Event Hub-compatible endpoint in the IoT hub.
  /// [name] The name of the consumer group to add.
  /// [properties] The EventHub consumer group name.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  const IotHubResourceEventHubConsumerGroupArgs({
    required this.eventHubEndpointName,
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubEndpointName': eventHubEndpointName,
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<EventHubConsumerGroupName, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory IotHubResourceEventHubConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return IotHubResourceEventHubConsumerGroupArgs(
      eventHubEndpointName: pulumi.Input.fromValue(map['eventHubEndpointName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(EventHubConsumerGroupName.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
