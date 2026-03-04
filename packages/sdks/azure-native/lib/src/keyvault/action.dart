// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy_action_type.dart';

class Action {
  /// The type of action.
  final pulumi.Input<KeyRotationPolicyActionType>? type;

  /// Creates a new [Action].
  /// [type] The type of action.
  Action({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            KeyRotationPolicyActionType,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyRotationPolicyActionType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
