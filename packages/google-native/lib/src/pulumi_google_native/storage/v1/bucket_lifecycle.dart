// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bucket_lifecycle_rule_item.dart';

/// The bucket's lifecycle configuration. See lifecycle management for more information.
class BucketLifecycle {
  /// A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  final List<BucketLifecycleRuleItem>? rule;

  BucketLifecycle({
    this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] =
          Input.encodeList<BucketLifecycleRuleItem, Map<String, dynamic>>(
              ruleValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketLifecycle.fromMap(Map<String, dynamic> map) {
    return BucketLifecycle(
      rule: map['rule'] == null
          ? null
          : Input.decodeList<BucketLifecycleRuleItem>(
              map['rule'],
              (value) => BucketLifecycleRuleItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
