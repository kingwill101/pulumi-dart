// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalForwardingRule.
class GetGlobalForwardingRuleArgs {
  final pulumi.Input<String> forwardingRule;
  final pulumi.Input<String>? project;

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
      forwardingRule: pulumi.Input.asInput<String>(map['forwardingRule']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
