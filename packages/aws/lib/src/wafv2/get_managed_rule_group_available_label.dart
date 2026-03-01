// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupAvailableLabel {
  /// Managed rule group name.
  final String name;

  /// Creates a new [GetManagedRuleGroupAvailableLabel].
  /// [name] Managed rule group name.
  GetManagedRuleGroupAvailableLabel({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetManagedRuleGroupAvailableLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupAvailableLabel(name: map['name'] as String);
  }
}
