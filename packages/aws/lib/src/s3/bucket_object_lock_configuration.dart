// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_object_lock_configuration_rule.dart';

class BucketObjectLockConfiguration {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final String? objectLockEnabled;

  /// Object Lock rule in place for this bucket (documented below).
  final BucketObjectLockConfigurationRule? rule;

  /// Creates a new [BucketObjectLockConfiguration].
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [rule] Object Lock rule in place for this bucket (documented below).
  BucketObjectLockConfiguration({this.objectLockEnabled, this.rule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectLockEnabled': ?objectLockEnabled,
      'rule': ?rule == null ? null : rule!.toMap(),
    };
  }

  factory BucketObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfiguration(
      objectLockEnabled: map['objectLockEnabled'] == null
          ? null
          : map['objectLockEnabled'] as String,
      rule: map['rule'] == null
          ? null
          : BucketObjectLockConfigurationRule.fromMap(
              (map['rule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
