// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_evaluation_mode.dart';
import 'policy_binding_gkehub_v1.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfig {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final BinaryAuthorizationConfigEvaluationMode? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingGkehubV1>? policyBindings;

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
          pulumi.Input.encodeList<PolicyBindingGkehubV1, Map<String, dynamic>>(
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
          : pulumi.Input.decodeList<PolicyBindingGkehubV1>(
              map['policyBindings'],
              (value) => PolicyBindingGkehubV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
