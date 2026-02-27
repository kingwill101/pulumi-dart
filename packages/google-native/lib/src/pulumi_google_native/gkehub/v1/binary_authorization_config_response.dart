// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_response_gkehub_v1.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponse {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final String evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponseGkehubV1> policyBindings;

  BinaryAuthorizationConfigResponse({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    map['policyBindings'] = pulumi.Input.encodeList<
        PolicyBindingResponseGkehubV1,
        Map<String, dynamic>>(policyBindings, (value) => value.toMap());
    return map;
  }

  factory BinaryAuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponse(
      evaluationMode: map['evaluationMode'] as String,
      policyBindings: pulumi.Input.decodeList<PolicyBindingResponseGkehubV1>(
          map['policyBindings'],
          (value) => PolicyBindingResponseGkehubV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
