// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the event hub destination for an event subscription.
class EventHubEventSubscriptionDestination {
  /// Delivery attribute details.
  final List<DynamicDeliveryAttributeMapping>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'EventHub'.
  final String endpointType;
  /// The Azure Resource Id that represents the endpoint of an Event Hub destination of an event subscription.
  final String? resourceId;

  /// Creates a new [EventHubEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource Id that represents the endpoint of an Event Hub destination of an event subscription.
  EventHubEventSubscriptionDestination({
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryAttributeMappings': ?deliveryAttributeMappings == null ? null : pulumi.Input.encodeList<DynamicDeliveryAttributeMapping, Map<String, dynamic>>(deliveryAttributeMappings!, (value) => value.toMap()),
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory EventHubEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return EventHubEventSubscriptionDestination(
      deliveryAttributeMappings: map['deliveryAttributeMappings'] == null ? null : pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(map['deliveryAttributeMappings'], (value) => DynamicDeliveryAttributeMapping.fromMap((value as Map).cast<String, dynamic>())),
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

