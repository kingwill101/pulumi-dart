// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_event_bus_event_bus_args_doc}
/// The set of arguments for EventBus.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_event_bus_event_bus_args_doc}
class EventBusArgs {
  /// The description of event bus.
  final pulumi.Input<String>? description;

  /// The name of event bus. The length is limited to 2 ~ 127 characters, which can be composed of letters, numbers or hyphens (-)
  final pulumi.Input<String> eventBusName;

  /// Creates a new [EventBusArgs].
  /// [description] The description of event bus.
  /// [eventBusName] The name of event bus. The length is limited to 2 ~ 127 characters, which can be composed of letters, numbers or hyphens (-)
  EventBusArgs({this.description, required this.eventBusName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': eventBusName,
    };
  }

  factory EventBusArgs.fromMap(Map<String, dynamic> map) {
    return EventBusArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventBusName: pulumi.Input.fromValue(map['eventBusName'] as String),
    );
  }
}
