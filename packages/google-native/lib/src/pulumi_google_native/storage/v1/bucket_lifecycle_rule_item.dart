// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_lifecycle_rule_item_action.dart';
import 'bucket_lifecycle_rule_item_condition.dart';

class BucketLifecycleRuleItem {
  /// The action to take.
  final BucketLifecycleRuleItemAction? action;

  /// The condition(s) under which the action will be taken.
  final BucketLifecycleRuleItemCondition? condition;

  BucketLifecycleRuleItem({
    this.action,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    return map;
  }

  factory BucketLifecycleRuleItem.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItem(
      action: map['action'] == null
          ? null
          : BucketLifecycleRuleItemAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      condition: map['condition'] == null
          ? null
          : BucketLifecycleRuleItemCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}
