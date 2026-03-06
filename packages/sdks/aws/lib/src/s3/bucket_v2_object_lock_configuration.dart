// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_object_lock_configuration_rule.dart';

class BucketV2ObjectLockConfiguration {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  final pulumi.Input<String>? objectLockEnabled;
  /// Object Lock rule in place for this bucket (documented below).
  final pulumi.Input<List<BucketV2ObjectLockConfigurationRule>>? rules;

  /// Creates a new [BucketV2ObjectLockConfiguration].
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Valid values are `true` or `false`. This argument is not supported in all regions or partitions.
  /// [rules] Object Lock rule in place for this bucket (documented below).
  const BucketV2ObjectLockConfiguration({
    this.objectLockEnabled,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectLockEnabled': ?objectLockEnabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketV2ObjectLockConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketV2ObjectLockConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketV2ObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketV2ObjectLockConfiguration(
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ObjectLockConfigurationRule>(guardedValue, (value) => BucketV2ObjectLockConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

