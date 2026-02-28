// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_response_gkehub_v1alpha.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponseGkehubV1alpha {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final String evaluationMode;
  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponseGkehubV1alpha> policyBindings;

  /// Creates a new [BinaryAuthorizationConfigResponseGkehubV1alpha].
  /// [evaluationMode] Optional. Mode of operation for binauthz policy evaluation.
  /// [policyBindings] Optional. Binauthz policies that apply to this cluster.
  BinaryAuthorizationConfigResponseGkehubV1alpha({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationMode': evaluationMode,
      'policyBindings': pulumi.Input.encodeList<PolicyBindingResponseGkehubV1alpha, Map<String, dynamic>>(policyBindings, (value) => value.toMap()),
    };
  }

  factory BinaryAuthorizationConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponseGkehubV1alpha(
      evaluationMode: map['evaluationMode'] as String,
      policyBindings: pulumi.Input.decodeList<PolicyBindingResponseGkehubV1alpha>(map['policyBindings'], (value) => PolicyBindingResponseGkehubV1alpha.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

