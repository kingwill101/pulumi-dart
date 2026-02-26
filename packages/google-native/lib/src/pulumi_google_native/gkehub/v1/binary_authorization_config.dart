// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'binary_authorization_config_evaluation_mode.dart';
import 'policy_binding2.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfig {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final BinaryAuthorizationConfigEvaluationMode? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBinding2>? policyBindings;

  BinaryAuthorizationConfig({
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
          Input.encodeList<PolicyBinding2, Map<String, dynamic>>(
              policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BinaryAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfig(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationConfigEvaluationMode.fromValue(
              map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null
          ? null
          : Input.decodeList<PolicyBinding2>(
              map['policyBindings'],
              (value) => PolicyBinding2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
