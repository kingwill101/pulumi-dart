// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  /// Creates a new [GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
