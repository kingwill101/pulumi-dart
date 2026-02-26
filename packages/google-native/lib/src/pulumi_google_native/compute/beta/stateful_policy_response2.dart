// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_response2.dart';

class StatefulPolicyResponse2 {
  final StatefulPolicyPreservedStateResponse2 preservedState;

  StatefulPolicyResponse2({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preservedState'] = preservedState.toMap();
    return map;
  }

  factory StatefulPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponse2(
      preservedState: StatefulPolicyPreservedStateResponse2.fromMap(
          (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
