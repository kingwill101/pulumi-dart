// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_success_policy_final_state.dart';

/// Policy that dictates the behavior for the task after it completes successfully.
class EnterpriseCrmEventbusProtoSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final EnterpriseCrmEventbusProtoSuccessPolicyFinalState? finalState;

  EnterpriseCrmEventbusProtoSuccessPolicy({
    this.finalState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final finalStateValue = finalState;
    if (finalStateValue != null) {
      map['finalState'] = finalStateValue.value;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoSuccessPolicy.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSuccessPolicy(
      finalState: map['finalState'] == null
          ? null
          : EnterpriseCrmEventbusProtoSuccessPolicyFinalState.fromValue(
              map['finalState'] as String),
    );
  }
}
