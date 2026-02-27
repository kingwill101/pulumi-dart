// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'binary_authorization_evaluation_mode2.dart';
import 'policy_binding.dart';

/// Configuration for Binary Authorization.
class BinaryAuthorization2 {
  /// This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evaluation_mode. If evaluation_mode is set to anything other than EVALUATION_MODE_UNSPECIFIED, this field is ignored.
  final bool? enabled;

  /// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
  final BinaryAuthorizationEvaluationMode2? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBinding>? policyBindings;

  BinaryAuthorization2({
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
          Input.encodeList<PolicyBinding, Map<String, dynamic>>(
              policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BinaryAuthorization2.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorization2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationEvaluationMode2.fromValue(
              map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null
          ? null
          : Input.decodeList<PolicyBinding>(
              map['policyBindings'],
              (value) => PolicyBinding.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
