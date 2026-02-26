// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_object_lock_configuration_rule_default_retention/bucket_object_lock_configuration_rule_default_retention.dart';

class BucketObjectLockConfigurationRule {
  /// Configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket. See below.
  final BucketObjectLockConfigurationRuleDefaultRetention defaultRetention;

  BucketObjectLockConfigurationRule({
    required this.defaultRetention,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRetention'] = defaultRetention.toMap();
    return map;
  }

  factory BucketObjectLockConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationRule(
      defaultRetention:
          BucketObjectLockConfigurationRuleDefaultRetention.fromMap(
              (map['defaultRetention'] as Map).cast<String, dynamic>()),
    );
  }
}
