// ignore_for_file: unused_element, unnecessary_cast

import 'end_point_response.dart';

/// Message for EventSubscription Destination to act on receiving an event
class EventSubscriptionDestinationResponse {
  /// OPTION 1: Hit an endpoint when we receive an event.
  final EndPointResponse endpoint;

  /// Service account needed for runtime plane to trigger IP workflow.
  final String serviceAccount;

  /// type of the destination
  final String type;

  EventSubscriptionDestinationResponse({
    required this.endpoint,
    required this.serviceAccount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint.toMap();
    map['serviceAccount'] = serviceAccount;
    map['type'] = type;
    return map;
  }

  factory EventSubscriptionDestinationResponse.fromMap(
      Map<String, dynamic> map) {
    return EventSubscriptionDestinationResponse(
      endpoint: EndPointResponse.fromMap(
          (map['endpoint'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      type: map['type'] as String,
    );
  }
}
