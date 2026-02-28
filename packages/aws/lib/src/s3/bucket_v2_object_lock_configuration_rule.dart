// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_object_lock_configuration_rule_default_retention.dart';

class BucketV2ObjectLockConfigurationRule {
  /// Default retention period that you want to apply to new objects placed in this bucket (documented below).
  final List<BucketV2ObjectLockConfigurationRuleDefaultRetention>
      defaultRetentions;

  /// Creates a new [BucketV2ObjectLockConfigurationRule].
  /// [defaultRetentions] Default retention period that you want to apply to new objects placed in this bucket (documented below).
  BucketV2ObjectLockConfigurationRule({
    required this.defaultRetentions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRetentions'] = pulumi.Input.encodeList<
        BucketV2ObjectLockConfigurationRuleDefaultRetention,
        Map<String, dynamic>>(defaultRetentions, (value) => value.toMap());
    return map;
  }

  factory BucketV2ObjectLockConfigurationRule.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ObjectLockConfigurationRule(
      defaultRetentions: pulumi.Input.decodeList<
              BucketV2ObjectLockConfigurationRuleDefaultRetention>(
          map['defaultRetentions'],
          (value) =>
              BucketV2ObjectLockConfigurationRuleDefaultRetention.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
