// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_action_action/event_action_action.dart';
import '../event_action_event/event_action_event.dart';

/// The set of arguments for EventAction.
class EventActionArgs {
  /// Describes the action to take.
  /// Described in <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> Configuration Block below.
  final Input<EventActionAction> action;

  /// Describes the event that triggers the <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span>.
  /// Described in <span pulumi-lang-nodejs="`event`" pulumi-lang-dotnet="`Event`" pulumi-lang-go="`event`" pulumi-lang-python="`event`" pulumi-lang-yaml="`event`" pulumi-lang-java="`event`">`event`</span> Configuration Block below.
  final Input<EventActionEvent> event;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EventActionArgs({
    required this.action,
    required this.event,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] =
        Input.mapInputValue<EventActionAction, Map<String, dynamic>>(
            action, (value) => value.toMap());
    map['event'] = Input.mapInputValue<EventActionEvent, Map<String, dynamic>>(
        event, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventActionArgs.fromMap(Map<String, dynamic> map) {
    return EventActionArgs(
      action: Input.asInput<EventActionAction>(map['action']),
      event: Input.asInput<EventActionEvent>(map['event']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
