// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupActivatedRuleAction2 {
  final String type;

  RuleGroupActivatedRuleAction2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory RuleGroupActivatedRuleAction2.fromMap(Map<String, dynamic> map) {
    return RuleGroupActivatedRuleAction2(
      type: map['type'] as String,
    );
  }
}
