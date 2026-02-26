// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'binary_authorization_config_evaluation_mode2.dart';
import 'policy_binding3.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfig2 {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final BinaryAuthorizationConfigEvaluationMode2? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBinding3>? policyBindings;

  BinaryAuthorizationConfig2({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue.value;
    }
    final policyBindingsValue = policyBindings;
    if (policyBindingsValue != null) {
      map['policyBindings'] =
          Input.encodeList<PolicyBinding3, Map<String, dynamic>>(
              policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BinaryAuthorizationConfig2.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfig2(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationConfigEvaluationMode2.fromValue(
              map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null
          ? null
          : Input.decodeList<PolicyBinding3>(
              map['policyBindings'],
              (value) => PolicyBinding3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
