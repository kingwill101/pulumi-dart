// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalForwardingRule.
class GetGlobalForwardingRuleArgs {
  final Input<String> forwardingRule;
  final Input<String>? project;

  GetGlobalForwardingRuleArgs({
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

  factory GetGlobalForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalForwardingRuleArgs(
      forwardingRule: Input.asInput<String>(map['forwardingRule']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
