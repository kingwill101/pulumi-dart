// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getForwardingRule.
class GetForwardingRuleArgs3 {
  final Input<String> forwardingRule;
  final Input<String>? project;
  final Input<String> region;

  GetForwardingRuleArgs3({
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

  factory GetForwardingRuleArgs3.fromMap(Map<String, dynamic> map) {
    return GetForwardingRuleArgs3(
      forwardingRule: Input.asInput<String>(map['forwardingRule']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
