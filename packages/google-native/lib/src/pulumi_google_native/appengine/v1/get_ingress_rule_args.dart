// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIngressRule.
class GetIngressRuleArgs {
  final Input<String> appId;
  final Input<String> ingressRuleId;

  GetIngressRuleArgs({
    required this.appId,
    required this.ingressRuleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['ingressRuleId'] = ingressRuleId;
    return map;
  }

  factory GetIngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleArgs(
      appId: Input.asInput<String>(map['appId']),
      ingressRuleId: Input.asInput<String>(map['ingressRuleId']),
    );
  }
}
