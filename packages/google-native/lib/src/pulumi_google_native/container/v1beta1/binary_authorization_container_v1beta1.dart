// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_evaluation_mode_container_v1beta1.dart';
import 'policy_binding.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorizationContainerV1beta1 {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final bool? enabled;

  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationModeContainerV1beta1? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBinding>? policyBindings;

  BinaryAuthorizationContainerV1beta1({
    this.enabled,
    this.evaluationMode,
    this.policyBindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue.value;
    }
    final policyBindingsValue = policyBindings;
    if (policyBindingsValue != null) {
      map['policyBindings'] =
          pulumi.Input.encodeList<PolicyBinding, Map<String, dynamic>>(
              policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BinaryAuthorizationContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BinaryAuthorizationContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationEvaluationModeContainerV1beta1.fromValue(
              map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null
          ? null
          : pulumi.Input.decodeList<PolicyBinding>(
              map['policyBindings'],
              (value) => PolicyBinding.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
