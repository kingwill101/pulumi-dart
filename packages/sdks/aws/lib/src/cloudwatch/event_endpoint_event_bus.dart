// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventEndpointEventBus {
  /// The ARN of the event bus the endpoint is associated with.
  final pulumi.Input<String> eventBusArn;

  /// Creates a new [EventEndpointEventBus].
  /// [eventBusArn] The ARN of the event bus the endpoint is associated with.
  EventEndpointEventBus({
    required this.eventBusArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusArn': eventBusArn,
    };
  }

  factory EventEndpointEventBus.fromMap(Map<String, dynamic> map) {
    return EventEndpointEventBus(
      eventBusArn: pulumi.Input.fromValue(map['eventBusArn'] as String),
    );
  }
}

