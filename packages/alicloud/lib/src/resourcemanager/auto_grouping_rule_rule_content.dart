// ignore_for_file: unused_element, unnecessary_cast


class AutoGroupingRuleRuleContent {
  /// The condition for the range of resources to be automatically transferred.
  final String? autoGroupingScopeCondition;
  /// The condition for the destination resource group.
  final String targetResourceGroupCondition;

  /// Creates a new [AutoGroupingRuleRuleContent].
  /// [autoGroupingScopeCondition] The condition for the range of resources to be automatically transferred.
  /// [targetResourceGroupCondition] The condition for the destination resource group.
  AutoGroupingRuleRuleContent({
    this.autoGroupingScopeCondition,
    required this.targetResourceGroupCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGroupingScopeCondition': ?autoGroupingScopeCondition,
      'targetResourceGroupCondition': targetResourceGroupCondition,
    };
  }

  factory AutoGroupingRuleRuleContent.fromMap(Map<String, dynamic> map) {
    return AutoGroupingRuleRuleContent(
      autoGroupingScopeCondition: map['autoGroupingScopeCondition'] == null ? null : map['autoGroupingScopeCondition'] as String,
      targetResourceGroupCondition: map['targetResourceGroupCondition'] as String,
    );
  }
}

