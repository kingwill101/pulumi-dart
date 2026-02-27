// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRuleSet.
class GetRuleSetArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> ruleSetId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      ruleSetId: Input.asInput<String>(map['ruleSetId']),
    );
  }
}
