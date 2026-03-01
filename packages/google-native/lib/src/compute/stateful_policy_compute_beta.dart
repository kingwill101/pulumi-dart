// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_compute_beta.dart';

class StatefulPolicyComputeBeta {
  final StatefulPolicyPreservedStateComputeBeta? preservedState;

  /// Creates a new [StatefulPolicyComputeBeta].
  /// [preservedState] Optional.
  StatefulPolicyComputeBeta({this.preservedState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': ?preservedState == null
          ? null
          : preservedState!.toMap(),
    };
  }

  factory StatefulPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyComputeBeta(
      preservedState: map['preservedState'] == null
          ? null
          : StatefulPolicyPreservedStateComputeBeta.fromMap(
              (map['preservedState'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
