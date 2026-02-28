// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_response.dart';

class StatefulPolicyResponse {
  final StatefulPolicyPreservedStateResponse preservedState;

  /// Creates a new [StatefulPolicyResponse].
  /// [preservedState] Required.
  StatefulPolicyResponse({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['preservedState'] = preservedState.toMap();
    return map;
  }

  factory StatefulPolicyResponse.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponse(
      preservedState: StatefulPolicyPreservedStateResponse.fromMap(
          (map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}
