// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_response_gkehub_v1beta.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponseGkehubV1beta {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final String evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponseGkehubV1beta> policyBindings;

  BinaryAuthorizationConfigResponseGkehubV1beta({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    map['policyBindings'] = pulumi.Input.encodeList<
        PolicyBindingResponseGkehubV1beta,
        Map<String, dynamic>>(policyBindings, (value) => value.toMap());
    return map;
  }

  factory BinaryAuthorizationConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponseGkehubV1beta(
      evaluationMode: map['evaluationMode'] as String,
      policyBindings:
          pulumi.Input.decodeList<PolicyBindingResponseGkehubV1beta>(
              map['policyBindings'],
              (value) => PolicyBindingResponseGkehubV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
