// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_compute_beta.dart';

class StatefulPolicyComputeBeta {
  final StatefulPolicyPreservedStateComputeBeta? preservedState;

  StatefulPolicyComputeBeta({
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

  factory StatefulPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyComputeBeta(
      preservedState: map['preservedState'] == null
          ? null
          : StatefulPolicyPreservedStateComputeBeta.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
