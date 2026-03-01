// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
/// Arguments for getIngressRule.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
class GetIngressRuleAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> ingressRuleId;

  /// Creates a new [GetIngressRuleAppengineV1betaArgs].
  /// [appId] Required.
  /// [ingressRuleId] Required.
  GetIngressRuleAppengineV1betaArgs({
    required String appId,
    required String ingressRuleId,
  }) : appId = pulumi.Input.asInput<String>(appId),
       ingressRuleId = pulumi.Input.asInput<String>(ingressRuleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'appId': appId, 'ingressRuleId': ingressRuleId};
  }

  factory GetIngressRuleAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleAppengineV1betaArgs(
      appId: map['appId'] as String,
      ingressRuleId: map['ingressRuleId'] as String,
    );
  }
}
