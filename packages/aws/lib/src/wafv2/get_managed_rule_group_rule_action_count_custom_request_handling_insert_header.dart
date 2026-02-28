// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  /// Creates a new [GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
