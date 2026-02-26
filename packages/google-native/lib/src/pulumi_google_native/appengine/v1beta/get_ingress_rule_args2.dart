// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getIngressRule.
class GetIngressRuleArgs2 {
  final Input<String> appId;
  final Input<String> ingressRuleId;

  GetIngressRuleArgs2({
    required this.appId,
    required this.ingressRuleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    map['ingressRuleId'] = ingressRuleId;
    return map;
  }

  factory GetIngressRuleArgs2.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleArgs2(
      appId: Input.asInput<String>(map['appId']),
      ingressRuleId: Input.asInput<String>(map['ingressRuleId']),
    );
  }
}
