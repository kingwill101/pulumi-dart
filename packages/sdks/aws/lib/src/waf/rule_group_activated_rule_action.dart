// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupActivatedRuleAction {
  final pulumi.Input<String> type;

  /// Creates a new [RuleGroupActivatedRuleAction].
  /// [type] Required.
  RuleGroupActivatedRuleAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RuleGroupActivatedRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupActivatedRuleAction(
      type: (map['type'] as String).input(),
    );
  }
}

