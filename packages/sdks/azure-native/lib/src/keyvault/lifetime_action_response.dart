// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'trigger_response.dart';

class LifetimeActionResponse {
  /// The action of key rotation policy lifetimeAction.
  final pulumi.Input<ActionResponse?>? action;
  /// The trigger of key rotation policy lifetimeAction.
  final pulumi.Input<TriggerResponse?>? trigger;

  /// Creates a new [LifetimeActionResponse].
  /// [action] The action of key rotation policy lifetimeAction.
  /// [trigger] The trigger of key rotation policy lifetimeAction.
  const LifetimeActionResponse({
    this.action,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<ActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<TriggerResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory LifetimeActionResponse.fromMap(Map<String, dynamic> map) {
    return LifetimeActionResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
