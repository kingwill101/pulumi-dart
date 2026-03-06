// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventBus resources.
class EventBusState {
  /// The description of event bus.
  final pulumi.Input<String>? description;
  /// The name of event bus. The length is limited to 2 ~ 127 characters, which can be composed of letters, numbers or hyphens (-)
  final pulumi.Input<String>? eventBusName;

  /// Creates a new [EventBusState].
  /// [description] The description of event bus.
  /// [eventBusName] The name of event bus. The length is limited to 2 ~ 127 characters, which can be composed of letters, numbers or hyphens (-)
  const EventBusState({
    this.description,
    this.eventBusName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': ?eventBusName,
    };
  }

  factory EventBusState.fromMap(Map<String, dynamic> map) {
    return EventBusState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBusName: (() { final guardedValue = map['eventBusName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

