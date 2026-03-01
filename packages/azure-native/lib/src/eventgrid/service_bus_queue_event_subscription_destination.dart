// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the service bus destination for an event subscription.
class ServiceBusQueueEventSubscriptionDestination {
  /// Delivery attribute details.
  final List<DynamicDeliveryAttributeMapping>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'ServiceBusQueue'.
  final String endpointType;
  /// The Azure Resource Id that represents the endpoint of the Service Bus destination of an event subscription.
  final String? resourceId;

  /// Creates a new [ServiceBusQueueEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource Id that represents the endpoint of the Service Bus destination of an event subscription.
  ServiceBusQueueEventSubscriptionDestination({
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

  factory ServiceBusQueueEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return ServiceBusQueueEventSubscriptionDestination(
      deliveryAttributeMappings: map['deliveryAttributeMappings'] == null ? null : pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(map['deliveryAttributeMappings'], (value) => DynamicDeliveryAttributeMapping.fromMap((value as Map).cast<String, dynamic>())),
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

