// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_response3.dart';

class StatefulPolicyResponse3 {
  final StatefulPolicyPreservedStateResponse3 preservedState;

  StatefulPolicyResponse3({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preservedState'] = preservedState.toMap();
    return map;
  }

  factory StatefulPolicyResponse3.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponse3(
      preservedState: StatefulPolicyPreservedStateResponse3.fromMap(
          (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
