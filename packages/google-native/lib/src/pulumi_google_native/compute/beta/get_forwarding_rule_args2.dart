// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getForwardingRule.
class GetForwardingRuleArgs2 {
  final Input<String> forwardingRule;
  final Input<String>? project;
  final Input<String> region;

  GetForwardingRuleArgs2({
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

  factory GetForwardingRuleArgs2.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleArgs2(
      forwardingRule: Input.asInput<String>(map['forwardingRule']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
