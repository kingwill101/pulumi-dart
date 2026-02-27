// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_action_action/event_action_action.dart';
import '../event_action_event/event_action_event.dart';

/// The set of arguments for EventAction.
class EventActionArgs {
  /// Describes the action to take.
  /// Described in `action` Configuration Block below.
  final pulumi.Input<EventActionAction> action;

  /// Describes the event that triggers the `action`.
  /// Described in `event` Configuration Block below.
  final pulumi.Input<EventActionEvent> event;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  EventActionArgs({
    required this.action,
    required this.event,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] =
        pulumi.Input.mapInputValue<EventActionAction, Map<String, dynamic>>(
            action, (value) => value.toMap());
    map['event'] =
        pulumi.Input.mapInputValue<EventActionEvent, Map<String, dynamic>>(
            event, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventActionArgs.fromMap(Map<String, dynamic> map) {
    return EventActionArgs(
      action: pulumi.Input.asInput<EventActionAction>(map['action']),
      event: pulumi.Input.asInput<EventActionEvent>(map['event']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
