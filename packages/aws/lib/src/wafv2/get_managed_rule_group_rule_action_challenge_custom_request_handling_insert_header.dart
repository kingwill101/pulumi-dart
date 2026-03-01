// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  /// Creates a new [GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedRuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
