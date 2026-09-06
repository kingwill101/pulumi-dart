// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the service bus topic destination for an event subscription.
class ServiceBusTopicEventSubscriptionDestination {
  /// Delivery attribute details.
  final pulumi.Input<List<dynamic>?>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'ServiceBusTopic'.
  final pulumi.Input<String> endpointType;
  /// The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [ServiceBusTopicEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  const ServiceBusTopicEventSubscriptionDestination({
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryAttributeMappings': ?deliveryAttributeMappings,
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory ServiceBusTopicEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicEventSubscriptionDestination(
      deliveryAttributeMappings: (() { final guardedValue = map['deliveryAttributeMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
