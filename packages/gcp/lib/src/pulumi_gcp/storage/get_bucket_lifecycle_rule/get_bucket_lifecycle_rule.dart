// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_lifecycle_rule_action/get_bucket_lifecycle_rule_action.dart';
import '../get_bucket_lifecycle_rule_condition/get_bucket_lifecycle_rule_condition.dart';

class GetBucketLifecycleRule {
  /// The Lifecycle Rule's action configuration. A single block of this type is supported.
  final List<GetBucketLifecycleRuleAction> actions;

  /// The Lifecycle Rule's condition configuration.
  final List<GetBucketLifecycleRuleCondition> conditions;

  GetBucketLifecycleRule({
    required this.actions,
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<GetBucketLifecycleRuleAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['conditions'] =
        Input.encodeList<GetBucketLifecycleRuleCondition, Map<String, dynamic>>(
            conditions, (value) => value.toMap());
    return map;
  }

  factory GetBucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return GetBucketLifecycleRule(
      actions: Input.decodeList<GetBucketLifecycleRuleAction>(
          map['actions'],
          (value) => GetBucketLifecycleRuleAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      conditions: Input.decodeList<GetBucketLifecycleRuleCondition>(
          map['conditions'],
          (value) => GetBucketLifecycleRuleCondition.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
