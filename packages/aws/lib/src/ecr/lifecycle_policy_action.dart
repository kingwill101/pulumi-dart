// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_action_type.dart';

class LifecyclePolicyAction {
  /// The type of action to take. Currently only 'expire' is supported.
  final LifecyclePolicyActionType type;

  /// Creates a new [LifecyclePolicyAction].
  /// [type] The type of action to take. Currently only 'expire' is supported.
  LifecyclePolicyAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
    };
  }

  factory LifecyclePolicyAction.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyAction(
      type: LifecyclePolicyActionType.fromValue(map['type'] as String),
    );
  }
}

