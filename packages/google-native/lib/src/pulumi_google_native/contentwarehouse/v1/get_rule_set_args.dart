// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRuleSet.
class GetRuleSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> ruleSetId;

  GetRuleSetArgs({
    required this.location,
    this.project,
    required this.ruleSetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['ruleSetId'] = ruleSetId;
    return map;
  }

  factory GetRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleSetArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      ruleSetId: pulumi.Input.asInput<String>(map['ruleSetId']),
    );
  }
}
