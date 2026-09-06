// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the HybridConnection destination for an event subscription.
class HybridConnectionEventSubscriptionDestinationResponse {
  /// Delivery attribute details.
  final pulumi.Input<List<dynamic>?>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'HybridConnection'.
  final pulumi.Input<String> endpointType;
  /// The Azure Resource ID of an hybrid connection that is the destination of an event subscription.
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [HybridConnectionEventSubscriptionDestinationResponse].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [resourceId] The Azure Resource ID of an hybrid connection that is the destination of an event subscription.
  const HybridConnectionEventSubscriptionDestinationResponse({
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

  factory HybridConnectionEventSubscriptionDestinationResponse.fromMap(Map<String, dynamic> map) {
    return HybridConnectionEventSubscriptionDestinationResponse(
      deliveryAttributeMappings: (() { final guardedValue = map['deliveryAttributeMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
