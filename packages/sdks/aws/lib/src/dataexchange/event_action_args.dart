// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_action_action.dart';
import 'event_action_event.dart';

/// {@template pulumi_dataexchange_event_action_event_action_args_doc}
/// The set of arguments for EventAction.
/// {@endtemplate}
/// {@macro pulumi_dataexchange_event_action_event_action_args_doc}
class EventActionArgs {
  /// Describes the action to take.
  /// Described in `action` Configuration Block below.
  final pulumi.Input<EventActionAction> action;
  /// Describes the event that triggers the `action`.
  /// Described in `event` Configuration Block below.
  final pulumi.Input<EventActionEvent> event;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventActionArgs].
  /// [action] Describes the action to take.
  /// [event] Describes the event that triggers the `action`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventActionArgs({
    required pulumi.Output<EventActionAction> action,
    required pulumi.Output<EventActionEvent> event,
    pulumi.Output<String>? region,
  }) :
      action = pulumi.Input.asInput<EventActionAction>(action),
      event = pulumi.Input.asInput<EventActionEvent>(event),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<EventActionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'event': pulumi.Input.mapInputValue<EventActionEvent, Map<String, dynamic>>(event, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory EventActionArgs.fromMap(Map<String, dynamic> map) {
    return EventActionArgs(
      action: pulumi.Output.create<EventActionAction>(EventActionAction.fromMap((map['action'] as Map).cast<String, dynamic>())),
      event: pulumi.Output.create<EventActionEvent>(EventActionEvent.fromMap((map['event'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

