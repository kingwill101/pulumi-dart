// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIngressRule.
class GetIngressRuleAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> ingressRuleId;

  GetIngressRuleAppengineV1betaArgs({
    required this.appId,
    required this.ingressRuleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['ingressRuleId'] = ingressRuleId;
    return map;
  }

  factory GetIngressRuleAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleAppengineV1betaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      ingressRuleId: pulumi.Input.asInput<String>(map['ingressRuleId']),
    );
  }
}
