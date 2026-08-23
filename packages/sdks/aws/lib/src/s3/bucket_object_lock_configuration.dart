// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_object_lock_configuration_rule.dart';

class BucketObjectLockConfiguration {
  /// Whether this bucket has an Object Lock configuration enabled. Valid value is `Enabled`. Use the top-level argument `objectLockEnabled` instead.
  final pulumi.Input<String>? objectLockEnabled;
  /// Object Lock rule in place for this bucket. See `object_lock_configuration.rule` Block below for details.
  final pulumi.Input<BucketObjectLockConfigurationRule>? rule;

  /// Creates a new [BucketObjectLockConfiguration].
  /// [objectLockEnabled] Whether this bucket has an Object Lock configuration enabled. Valid value is `Enabled`. Use the top-level argument `objectLockEnabled` instead.
  /// [rule] Object Lock rule in place for this bucket. See `object_lock_configuration.rule` Block below for details.
  const BucketObjectLockConfiguration({
    this.objectLockEnabled,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectLockEnabled': ?objectLockEnabled,
      'rule': ?pulumi.Input.mapOptionalInputValue<BucketObjectLockConfigurationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory BucketObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfiguration(
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketObjectLockConfigurationRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
