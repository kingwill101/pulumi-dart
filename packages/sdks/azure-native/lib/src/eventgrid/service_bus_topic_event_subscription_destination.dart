// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the service bus topic destination for an event subscription.
class ServiceBusTopicEventSubscriptionDestination {
  /// Delivery attribute details.
  final pulumi.Input<List<DynamicDeliveryAttributeMapping>>?
  deliveryAttributeMappings;

  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'ServiceBusTopic'.
  final pulumi.Input<String> endpointType;

  /// The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ServiceBusTopicEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  ServiceBusTopicEventSubscriptionDestination({
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryAttributeMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<DynamicDeliveryAttributeMapping>,
            List<Map<String, dynamic>>
          >(
            deliveryAttributeMappings,
            (value) =>
                pulumi.Input.encodeList<
                  DynamicDeliveryAttributeMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory ServiceBusTopicEventSubscriptionDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceBusTopicEventSubscriptionDestination(
      deliveryAttributeMappings: (() {
        final guardedValue = map['deliveryAttributeMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(
            guardedValue,
            (value) => DynamicDeliveryAttributeMapping.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
