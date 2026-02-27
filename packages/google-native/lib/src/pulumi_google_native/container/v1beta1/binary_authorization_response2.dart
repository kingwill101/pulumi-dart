// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'policy_binding_response.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorizationResponse2 {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final bool enabled;

  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final String evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBindingResponse> policyBindings;

  BinaryAuthorizationResponse2({
    required this.enabled,
    required this.evaluationMode,
    required this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['evaluationMode'] = evaluationMode;
    map['policyBindings'] =
        Input.encodeList<PolicyBindingResponse, Map<String, dynamic>>(
            policyBindings, (value) => value.toMap());
    return map;
  }

  factory BinaryAuthorizationResponse2.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationResponse2(
      enabled: map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] as String,
      policyBindings: Input.decodeList<PolicyBindingResponse>(
          map['policyBindings'],
          (value) => PolicyBindingResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
