// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader {
  /// Managed rule group name.
  final String name;
  final String value;

  /// Creates a new [GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader].
  /// [name] Managed rule group name.
  /// [value] Required.
  GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
