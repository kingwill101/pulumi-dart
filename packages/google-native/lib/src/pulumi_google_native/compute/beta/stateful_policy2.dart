// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state2.dart';

class StatefulPolicy2 {
  final StatefulPolicyPreservedState2? preservedState;

  StatefulPolicy2({
    this.preservedState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preservedStateValue = preservedState;
    if (preservedStateValue != null) {
      map['preservedState'] = preservedStateValue.toMap();
    }
    return map;
  }

  factory StatefulPolicy2.fromMap(Map<String, dynamic> map) {
    return StatefulPolicy2(
      preservedState: map['preservedState'] == null
          ? null
          : StatefulPolicyPreservedState2.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
