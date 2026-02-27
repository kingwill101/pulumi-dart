// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRuleset.
class GetRulesetArgs {
  final Input<String>? project;
  final Input<String> rulesetId;

  GetRulesetArgs({
    this.project,
    required this.rulesetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rulesetId'] = rulesetId;
    return map;
  }

  factory GetRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesetArgs(
      project: Input.asOptionalInput<String>(map['project']),
      rulesetId: Input.asInput<String>(map['rulesetId']),
    );
  }
}
