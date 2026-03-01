// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping_response.dart';

/// Information about the service bus topic destination for an event subscription.
class ServiceBusTopicEventSubscriptionDestinationResponse {
  /// Delivery attribute details.
  final List<DynamicDeliveryAttributeMappingResponse>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'ServiceBusTopic'.
  final String endpointType;
  /// The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  final String? resourceId;

  /// Creates a new [ServiceBusTopicEventSubscriptionDestinationResponse].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource Id that represents the endpoint of the Service Bus Topic destination of an event subscription.
  ServiceBusTopicEventSubscriptionDestinationResponse({
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryAttributeMappings': ?deliveryAttributeMappings == null ? null : pulumi.Input.encodeList<DynamicDeliveryAttributeMappingResponse, Map<String, dynamic>>(deliveryAttributeMappings!, (value) => value.toMap()),
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory ServiceBusTopicEventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceBusTopicEventSubscriptionDestinationResponse(
      deliveryAttributeMappings: map['deliveryAttributeMappings'] == null ? null : pulumi.Input.decodeList<DynamicDeliveryAttributeMappingResponse>(map['deliveryAttributeMappings'], (value) => DynamicDeliveryAttributeMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

