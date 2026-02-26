// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_object_lock_configuration_rule/bucket_object_lock_configuration_rule.dart';

class BucketObjectLockConfiguration {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This argument is not supported in all regions or partitions.
  final String? objectLockEnabled;

  /// Object Lock rule in place for this bucket (documented below).
  final BucketObjectLockConfigurationRule? rule;

  BucketObjectLockConfiguration({
    this.objectLockEnabled,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectLockEnabledValue = objectLockEnabled;
    if (objectLockEnabledValue != null) {
      map['objectLockEnabled'] = objectLockEnabledValue;
    }
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] = ruleValue.toMap();
    }
    return map;
  }

  factory BucketObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfiguration(
      objectLockEnabled: map['objectLockEnabled'] == null
          ? null
          : map['objectLockEnabled'] as String,
      rule: map['rule'] == null
          ? null
          : BucketObjectLockConfigurationRule.fromMap(
              (map['rule'] as Map).cast<String, dynamic>()),
    );
  }
}
