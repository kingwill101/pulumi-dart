// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lock_rule_response.dart';

/// Definition of ObjectLockConfiguration
class ObjectLockConfigurationResponse {
  /// Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  final pulumi.Input<String>? objectLockEnabled;
  /// Specifies the Object Lock rule for the specified object. Enable this rule when you apply ``ObjectLockConfiguration`` to a bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information, see [ObjectLockRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html) and [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). Specifies the Object Lock rule for the specified object. Enable the this rule when you apply ``ObjectLockConfiguration`` to a bucket.
  final pulumi.Input<ObjectLockRuleResponse>? rule;

  /// Creates a new [ObjectLockConfigurationResponse].
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled. Enable ``ObjectLockEnabled`` when you apply ``ObjectLockConfiguration`` to a bucket.
  /// [rule] Specifies the Object Lock rule for the specified object. Enable this rule when you apply ``ObjectLockConfiguration`` to a bucket. If Object Lock is turned on, bucket settings require both ``Mode`` and a period of either ``Days`` or ``Years``. You cannot specify ``Days`` and ``Years`` at the same time. For more information, see [ObjectLockRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html) and [DefaultRetention](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html). Specifies the Object Lock rule for the specified object. Enable the this rule when you apply ``ObjectLockConfiguration`` to a bucket.
  const ObjectLockConfigurationResponse({
    this.objectLockEnabled,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectLockEnabled': ?objectLockEnabled,
      'rule': ?pulumi.Input.mapOptionalInputValue<ObjectLockRuleResponse, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory ObjectLockConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ObjectLockConfigurationResponse(
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectLockRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
