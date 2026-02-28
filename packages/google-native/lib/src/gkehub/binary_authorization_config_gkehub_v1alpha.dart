// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_evaluation_mode_gkehub_v1alpha.dart';
import 'policy_binding_gkehub_v1alpha.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigGkehubV1alpha {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final BinaryAuthorizationConfigEvaluationModeGkehubV1alpha? evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingGkehubV1alpha>? policyBindings;

  /// Creates a new [BinaryAuthorizationConfigGkehubV1alpha].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationConfigGkehubV1alpha({
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': ?evaluationMode == null ? null : evaluationMode!.value,
      'policyBindings': ?policyBindings == null ? null : pulumi.Input.encodeList<PolicyBindingGkehubV1alpha, Map<String, dynamic>>(policyBindings!, (value) => value.toMap()),
    };
  }

  factory BinaryAuthorizationConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigGkehubV1alpha(
      evaluationMode: map['evaluationMode'] == null ? null : BinaryAuthorizationConfigEvaluationModeGkehubV1alpha.fromValue(map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null ? null : pulumi.Input.decodeList<PolicyBindingGkehubV1alpha>(map['policyBindings'], (value) => PolicyBindingGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

