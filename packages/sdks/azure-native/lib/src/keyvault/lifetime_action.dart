// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'trigger.dart';

class LifetimeAction {
  /// The action of key rotation policy lifetimeAction.
  final pulumi.Input<Action>? action;

  /// The trigger of key rotation policy lifetimeAction.
  final pulumi.Input<Trigger>? trigger;

  /// Creates a new [LifetimeAction].
  /// [action] The action of key rotation policy lifetimeAction.
  /// [trigger] The trigger of key rotation policy lifetimeAction.
  LifetimeAction({this.action, this.trigger});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          ?pulumi.Input.mapOptionalInputValue<Action, Map<String, dynamic>>(
            action,
            (value) => value.toMap(),
          ),
      'trigger':
          ?pulumi.Input.mapOptionalInputValue<Trigger, Map<String, dynamic>>(
            trigger,
            (value) => value.toMap(),
          ),
    };
  }

  factory LifetimeAction.fromMap(Map<String, dynamic> map) {
    return LifetimeAction(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Action.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      trigger: (() {
        final guardedValue = map['trigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Trigger.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
