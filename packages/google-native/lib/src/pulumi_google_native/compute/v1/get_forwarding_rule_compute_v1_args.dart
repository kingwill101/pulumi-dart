// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getForwardingRule.
class GetForwardingRuleComputeV1Args {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetForwardingRuleComputeV1Args({
    required this.forwardingRule,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingRule'] = forwardingRule;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetForwardingRuleComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleComputeV1Args(
      forwardingRule: pulumi.Input.asInput<String>(map['forwardingRule']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
