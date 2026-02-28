// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state.dart';

class StatefulPolicy {
  final StatefulPolicyPreservedState? preservedState;

  /// Creates a new [StatefulPolicy].
  /// [preservedState] Optional.
  StatefulPolicy({
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

  factory StatefulPolicy.fromMap(Map<String, dynamic> map) {
    return StatefulPolicy(
      preservedState: map['preservedState'] == null
          ? null
          : StatefulPolicyPreservedState.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
