// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupConsumedLabel {
  /// Managed rule group name.
  final String name;

  /// Creates a new [GetManagedRuleGroupConsumedLabel].
  /// [name] Managed rule group name.
  GetManagedRuleGroupConsumedLabel({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetManagedRuleGroupConsumedLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupConsumedLabel(name: map['name'] as String);
  }
}
