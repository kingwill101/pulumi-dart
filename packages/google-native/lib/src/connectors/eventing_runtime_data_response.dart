// ignore_for_file: unused_element, unnecessary_cast

import 'eventing_status_response.dart';

/// Eventing runtime data has the details related to eventing managed by the system.
class EventingRuntimeDataResponse {
  /// Events listener endpoint. The value will populated after provisioning the events listener.
  final String eventsListenerEndpoint;

  /// Events listener PSC Service attachment. The value will be populated after provisioning the events listener with private connectivity enabled.
  final String eventsListenerPscSa;

  /// Current status of eventing.
  final EventingStatusResponse status;

  /// Creates a new [EventingRuntimeDataResponse].
  /// [eventsListenerEndpoint] Events listener endpoint. The value will populated after provisioning the events listener.
  /// [eventsListenerPscSa] Events listener PSC Service attachment. The value will be populated after provisioning the events listener with private connectivity enabled.
  /// [status] Current status of eventing.
  EventingRuntimeDataResponse({
    required this.eventsListenerEndpoint,
    required this.eventsListenerPscSa,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventsListenerEndpoint'] = eventsListenerEndpoint;
    map['eventsListenerPscSa'] = eventsListenerPscSa;
    map['status'] = status.toMap();
    return map;
  }

  factory EventingRuntimeDataResponse.fromMap(Map<String, dynamic> map) {
    return EventingRuntimeDataResponse(
      eventsListenerEndpoint: map['eventsListenerEndpoint'] as String,
      eventsListenerPscSa: map['eventsListenerPscSa'] as String,
      status: EventingStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
