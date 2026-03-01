// ignore_for_file: unused_element, unnecessary_cast

import 'key_rotation_policy_action_type.dart';

class Action {
  /// The type of action.
  final KeyRotationPolicyActionType? type;

  /// Creates a new [Action].
  /// [type] The type of action.
  Action({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      type: map['type'] == null ? null : KeyRotationPolicyActionType.fromValue(map['type'] as String),
    );
  }
}

