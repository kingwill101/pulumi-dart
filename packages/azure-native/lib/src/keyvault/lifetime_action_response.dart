// ignore_for_file: unused_element, unnecessary_cast

import 'action_response.dart';
import 'trigger_response.dart';

class LifetimeActionResponse {
  /// The action of key rotation policy lifetimeAction.
  final ActionResponse? action;
  /// The trigger of key rotation policy lifetimeAction.
  final TriggerResponse? trigger;

  /// Creates a new [LifetimeActionResponse].
  /// [action] The action of key rotation policy lifetimeAction.
  /// [trigger] The trigger of key rotation policy lifetimeAction.
  LifetimeActionResponse({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
    };
  }

  factory LifetimeActionResponse.fromMap(Map<String, dynamic> map) {
    return LifetimeActionResponse(
      action: map['action'] == null ? null : ActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : TriggerResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

