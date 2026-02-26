// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_lifecycle_rule_action/bucket_lifecycle_rule_action.dart';
import '../bucket_lifecycle_rule_condition/bucket_lifecycle_rule_condition.dart';

class BucketLifecycleRule {
  /// The Lifecycle Rule's action configuration. A single block of this type is supported. Structure is documented below.
  final BucketLifecycleRuleAction action;

  /// The Lifecycle Rule's condition configuration. A single block of this type is supported. Structure is documented below.
  final BucketLifecycleRuleCondition condition;

  BucketLifecycleRule({
    required this.action,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['condition'] = condition.toMap();
    return map;
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      action: BucketLifecycleRuleAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      condition: BucketLifecycleRuleCondition.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}
