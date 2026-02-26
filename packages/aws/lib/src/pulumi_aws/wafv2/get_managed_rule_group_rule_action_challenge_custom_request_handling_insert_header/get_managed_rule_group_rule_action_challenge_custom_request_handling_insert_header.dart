// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
