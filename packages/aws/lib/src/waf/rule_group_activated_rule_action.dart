// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupActivatedRuleAction {
  final String type;

  /// Creates a new [RuleGroupActivatedRuleAction].
  /// [type] Required.
  RuleGroupActivatedRuleAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory RuleGroupActivatedRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupActivatedRuleAction(
      type: map['type'] as String,
    );
  }
}
