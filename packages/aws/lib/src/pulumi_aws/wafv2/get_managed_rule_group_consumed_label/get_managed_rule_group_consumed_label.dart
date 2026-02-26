// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupConsumedLabel {
  /// Managed rule group name.
  final String name;

  GetManagedRuleGroupConsumedLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetManagedRuleGroupConsumedLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupConsumedLabel(
      name: map['name'] as String,
    );
  }
}
