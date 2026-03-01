// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the HybridConnection destination for an event subscription.
class HybridConnectionEventSubscriptionDestination {
  /// Delivery attribute details.
  final List<DynamicDeliveryAttributeMapping>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'HybridConnection'.
  final String endpointType;
  /// The Azure Resource ID of an hybrid connection that is the destination of an event subscription.
  final String? resourceId;

  /// Creates a new [HybridConnectionEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource ID of an hybrid connection that is the destination of an event subscription.
  HybridConnectionEventSubscriptionDestination({
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

  factory HybridConnectionEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return HybridConnectionEventSubscriptionDestination(
      deliveryAttributeMappings: map['deliveryAttributeMappings'] == null ? null : pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(map['deliveryAttributeMappings'], (value) => DynamicDeliveryAttributeMapping.fromMap((value as Map).cast<String, dynamic>())),
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

