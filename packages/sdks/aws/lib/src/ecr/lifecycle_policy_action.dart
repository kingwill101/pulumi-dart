// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_action_type.dart';

class LifecyclePolicyAction {
  /// The type of action to take. Currently only 'expire' is supported.
  final pulumi.Input<LifecyclePolicyActionType> type;

  /// Creates a new [LifecyclePolicyAction].
  /// [type] The type of action to take. Currently only 'expire' is supported.
  const LifecyclePolicyAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<LifecyclePolicyActionType, String>(type, (value) => value.wireValue),
    };
  }

  factory LifecyclePolicyAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyAction(
      type: pulumi.Input.fromValue(LifecyclePolicyActionType.fromValue(map['type']! as String)),
    );
  }
}

