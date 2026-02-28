// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_object_lock_configuration_rule.dart';

class BucketV2ObjectLockConfiguration {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final String? objectLockEnabled;

  /// Object Lock rule in place for this bucket (documented below).
  final List<BucketV2ObjectLockConfigurationRule>? rules;

  /// Creates a new [BucketV2ObjectLockConfiguration].
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [rules] Object Lock rule in place for this bucket (documented below).
  BucketV2ObjectLockConfiguration({
    this.objectLockEnabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectLockEnabledValue = objectLockEnabled;
    if (objectLockEnabledValue != null) {
      map['objectLockEnabled'] = objectLockEnabledValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.encodeList<
          BucketV2ObjectLockConfigurationRule,
          Map<String, dynamic>>(rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketV2ObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketV2ObjectLockConfiguration(
      objectLockEnabled: map['objectLockEnabled'] == null
          ? null
          : map['objectLockEnabled'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<BucketV2ObjectLockConfigurationRule>(
              map['rules'],
              (value) => BucketV2ObjectLockConfigurationRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
