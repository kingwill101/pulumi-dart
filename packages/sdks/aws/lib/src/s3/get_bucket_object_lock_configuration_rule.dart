// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_lock_configuration_rule_default_retention.dart';

class GetBucketObjectLockConfigurationRule {
  /// Default object lock retention settings for new objects placed in the bucket. See Default Retention below.
  final pulumi.Input<List<GetBucketObjectLockConfigurationRuleDefaultRetention>> defaultRetentions;

  /// Creates a new [GetBucketObjectLockConfigurationRule].
  /// [defaultRetentions] Default object lock retention settings for new objects placed in the bucket. See Default Retention below.
  const GetBucketObjectLockConfigurationRule({
    required this.defaultRetentions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRetentions': pulumi.Input.mapInputValue<List<GetBucketObjectLockConfigurationRuleDefaultRetention>, List<Map<String, dynamic>>>(defaultRetentions, (value) => pulumi.Input.encodeList<GetBucketObjectLockConfigurationRuleDefaultRetention, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBucketObjectLockConfigurationRule.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationRule(
      defaultRetentions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBucketObjectLockConfigurationRuleDefaultRetention>(map['defaultRetentions']!, (value) => GetBucketObjectLockConfigurationRuleDefaultRetention.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
