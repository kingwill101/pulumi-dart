// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An event to be notified for.
class EventResponse {
  /// The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
  final pulumi.Input<String>? eventName;

  /// Creates a new [EventResponse].
  /// [eventName] The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
  EventResponse({
    this.eventName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventName': ?eventName,
    };
  }

  factory EventResponse.fromMap(Map<String, dynamic> map) {
    return EventResponse(
      eventName: map['eventName'] == null ? null : (map['eventName'] as String).input(),
    );
  }
}

