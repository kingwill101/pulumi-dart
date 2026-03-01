// ignore_for_file: unused_element, unnecessary_cast

import 'action.dart';
import 'trigger.dart';

class LifetimeAction {
  /// The action of key rotation policy lifetimeAction.
  final Action? action;
  /// The trigger of key rotation policy lifetimeAction.
  final Trigger? trigger;

  /// Creates a new [LifetimeAction].
  /// [action] The action of key rotation policy lifetimeAction.
  /// [trigger] The trigger of key rotation policy lifetimeAction.
  LifetimeAction({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
    };
  }

  factory LifetimeAction.fromMap(Map<String, dynamic> map) {
    return LifetimeAction(
      action: map['action'] == null ? null : Action.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : Trigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

