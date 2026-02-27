// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupActivatedRuleActionWafregional {
  final String type;

  RuleGroupActivatedRuleActionWafregional({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory RuleGroupActivatedRuleActionWafregional.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupActivatedRuleActionWafregional(
      type: map['type'] as String,
    );
  }
}
