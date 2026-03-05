// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An event to be notified for.
class Event {
  /// The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
  final pulumi.Input<String>? eventName;

  /// Creates a new [Event].
  /// [eventName] The event type for which this notification is enabled (i.e. AutoShutdown, Cost)
  Event({
    this.eventName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventName': ?eventName,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      eventName: (() { final guardedValue = map['eventName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

