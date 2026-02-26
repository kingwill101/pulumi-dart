// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalForwardingRule.
class GetGlobalForwardingRuleArgs2 {
  final Input<String> forwardingRule;
  final Input<String>? project;

  GetGlobalForwardingRuleArgs2({
    required this.forwardingRule,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forwardingRule'] = forwardingRule;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalForwardingRuleArgs2.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleArgs2(
      forwardingRule: Input.asInput<String>(map['forwardingRule']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
