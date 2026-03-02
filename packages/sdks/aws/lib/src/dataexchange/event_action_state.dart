// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_action_action.dart';
import 'event_action_event.dart';

/// Input properties used for looking up and filtering EventAction resources.
class EventActionState {
  /// Describes the action to take.
  /// Described in `action` Configuration Block below.
  final pulumi.Input<EventActionAction>? action;
  /// Amazon Resource Name (ARN) of the event action.
  final pulumi.Input<String>? arn;
  /// Date and time when the resource was created.
  final pulumi.Input<String>? createdAt;
  /// Describes the event that triggers the `action`.
  /// Described in `event` Configuration Block below.
  final pulumi.Input<EventActionEvent>? event;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Data and time when the resource was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [EventActionState].
  /// [action] Describes the action to take.
  /// [arn] Amazon Resource Name (ARN) of the event action.
  /// [createdAt] Date and time when the resource was created.
  /// [event] Describes the event that triggers the `action`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [updatedAt] Data and time when the resource was last updated.
  EventActionState({
    this.action,
    this.arn,
    this.createdAt,
    this.event,
    this.region,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<EventActionAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'arn': ?arn,
      'createdAt': ?createdAt,
      'event': ?pulumi.Input.mapOptionalInputValue<EventActionEvent, Map<String, dynamic>>(event, (value) => value.toMap()),
      'region': ?region,
      'updatedAt': ?updatedAt,
    };
  }

  factory EventActionState.fromMap(Map<String, dynamic> map) {
    return EventActionState(
      action: map['action'] == null ? null : (EventActionAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      event: map['event'] == null ? null : (EventActionEvent.fromMap((map['event'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

