// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'policy_binding_response3.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfigResponse2 {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final String evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponse3> policyBindings;

  BinaryAuthorizationConfigResponse2({
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationMode'] = evaluationMode;
    map['policyBindings'] =
        Input.encodeList<PolicyBindingResponse3, Map<String, dynamic>>(
            policyBindings, (value) => value.toMap());
    return map;
  }

  factory BinaryAuthorizationConfigResponse2.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfigResponse2(
      evaluationMode: map['evaluationMode'] as String,
      policyBindings: Input.decodeList<PolicyBindingResponse3>(
          map['policyBindings'],
          (value) => PolicyBindingResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
