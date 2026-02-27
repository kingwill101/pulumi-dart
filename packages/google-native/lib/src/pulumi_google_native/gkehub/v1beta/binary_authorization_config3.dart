// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'binary_authorization_config_evaluation_mode3.dart';
import 'policy_binding4.dart';

/// BinaryAuthorizationConfig defines the fleet level configuration of binary authorization feature.
class BinaryAuthorizationConfig3 {
  /// Optional. Mode of operation for binauthz policy evaluation.
  final BinaryAuthorizationConfigEvaluationMode3? evaluationMode;

  /// Optional. Binauthz policies that apply to this cluster.
  final List<PolicyBinding4>? policyBindings;

  BinaryAuthorizationConfig3({
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
          Input.encodeList<PolicyBinding4, Map<String, dynamic>>(
              policyBindingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BinaryAuthorizationConfig3.fromMap(Map<String, dynamic> map) {
    return BinaryAuthorizationConfig3(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : BinaryAuthorizationConfigEvaluationMode3.fromValue(
              map['evaluationMode'] as String),
      policyBindings: map['policyBindings'] == null
          ? null
          : Input.decodeList<PolicyBinding4>(
              map['policyBindings'],
              (value) => PolicyBinding4.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
