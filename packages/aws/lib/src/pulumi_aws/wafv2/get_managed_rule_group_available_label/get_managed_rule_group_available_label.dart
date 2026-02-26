// ignore_for_file: unused_element, unnecessary_cast

class GetManagedRuleGroupAvailableLabel {
  /// Managed rule group name.
  final String name;

  GetManagedRuleGroupAvailableLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetManagedRuleGroupAvailableLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupAvailableLabel(
      name: map['name'] as String,
    );
  }
}
