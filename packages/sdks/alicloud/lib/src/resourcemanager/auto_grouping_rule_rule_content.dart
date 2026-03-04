// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoGroupingRuleRuleContent {
  /// The condition for the range of resources to be automatically transferred.
  final pulumi.Input<String>? autoGroupingScopeCondition;

  /// The condition for the destination resource group.
  final pulumi.Input<String> targetResourceGroupCondition;

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
      autoGroupingScopeCondition: (() {
        final guardedValue = map['autoGroupingScopeCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceGroupCondition: pulumi.Input.fromValue(
        map['targetResourceGroupCondition'] as String,
      ),
    );
  }
}
