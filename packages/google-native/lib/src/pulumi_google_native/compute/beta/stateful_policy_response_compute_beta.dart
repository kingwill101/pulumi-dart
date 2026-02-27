// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_response_compute_beta.dart';

class StatefulPolicyResponseComputeBeta {
  final StatefulPolicyPreservedStateResponseComputeBeta preservedState;

  StatefulPolicyResponseComputeBeta({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preservedState'] = preservedState.toMap();
    return map;
  }

  factory StatefulPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponseComputeBeta(
      preservedState: StatefulPolicyPreservedStateResponseComputeBeta.fromMap(
          (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
