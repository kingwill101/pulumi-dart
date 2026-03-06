// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_object_lock_configuration_rule_default_retention.dart';

class BucketV2ObjectLockConfigurationRule {
  /// Default retention period that you want to apply to new objects placed in this bucket (documented below).
  final pulumi.Input<List<BucketV2ObjectLockConfigurationRuleDefaultRetention>> defaultRetentions;

  /// Creates a new [BucketV2ObjectLockConfigurationRule].
  /// [defaultRetentions] Default retention period that you want to apply to new objects placed in this bucket (documented below).
  const BucketV2ObjectLockConfigurationRule({
    required this.defaultRetentions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRetentions': pulumi.Input.mapInputValue<List<BucketV2ObjectLockConfigurationRuleDefaultRetention>, List<Map<String, dynamic>>>(defaultRetentions, (value) => pulumi.Input.encodeList<BucketV2ObjectLockConfigurationRuleDefaultRetention, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketV2ObjectLockConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketV2ObjectLockConfigurationRule(
      defaultRetentions: pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ObjectLockConfigurationRuleDefaultRetention>(map['defaultRetentions']!, (value) => BucketV2ObjectLockConfigurationRuleDefaultRetention.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

