// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'policy_binding_response2.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponse {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final String evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponse2> policyBindings;

  BinaryAuthorizationConfigResponse({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    map['policyBindings'] =
        Input.encodeList<PolicyBindingResponse2, Map<String, dynamic>>(
            policyBindings, (value) => value.toMap());
    return map;
  }

  factory BinaryAuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponse(
      evaluationMode: map['evaluationMode'] as String,
      policyBindings: Input.decodeList<PolicyBindingResponse2>(
          map['policyBindings'],
          (value) => PolicyBindingResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
