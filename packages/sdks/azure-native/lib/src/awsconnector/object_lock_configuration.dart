// ignore_for_file: unused_element, unnecessary_cast

import 'object_lock_rule.dart';

/// Definition of ObjectLockConfiguration
class ObjectLockConfiguration {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  final String? objectLockEnabled;
  /// Specifies the Object Lock rule for the specified object. Enable this rule when you apply ``ObjectLockConfiguration`` to a bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information, see [ObjectLockRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html) and [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). Specifies the Object Lock rule for the specified object. Enable the this rule when you apply ``ObjectLockConfiguration`` to a bucket.
  final ObjectLockRule? rule;

  /// Creates a new [ObjectLockConfiguration].
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  /// [rule] Specifies the Object Lock rule for the specified object. Enable this rule when you apply ``ObjectLockConfiguration`` to a bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information, see [ObjectLockRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html) and [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). Specifies the Object Lock rule for the specified object. Enable the this rule when you apply ``ObjectLockConfiguration`` to a bucket.
  ObjectLockConfiguration({
    this.objectLockEnabled,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectLockEnabled': ?objectLockEnabled,
      'rule': ?rule == null ? null : rule!.toMap(),
    };
  }

  factory ObjectLockConfiguration.fromMap(Map<String, dynamic> map) {
    return ObjectLockConfiguration(
      objectLockEnabled: map['objectLockEnabled'] == null ? null : map['objectLockEnabled'] as String,
      rule: map['rule'] == null ? null : ObjectLockRule.fromMap((map['rule'] as Map).cast<String, dynamic>()),
    );
  }
}

