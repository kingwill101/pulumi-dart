// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state3.dart';

class StatefulPolicy3 {
  final StatefulPolicyPreservedState3? preservedState;

  StatefulPolicy3({
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

  factory StatefulPolicy3.fromMap(Map<String, dynamic> map) {
    return StatefulPolicy3(
      preservedState: map['preservedState'] == null
          ? null
          : StatefulPolicyPreservedState3.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
