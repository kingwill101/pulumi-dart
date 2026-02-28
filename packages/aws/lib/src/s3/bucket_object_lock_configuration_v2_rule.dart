// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_object_lock_configuration_v2_rule_default_retention.dart';

class BucketObjectLockConfigurationV2Rule {
  /// Configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket. See below.
  final BucketObjectLockConfigurationV2RuleDefaultRetention defaultRetention;

  /// Creates a new [BucketObjectLockConfigurationV2Rule].
  /// [defaultRetention] Configuration block for specifying the default Object Lock retention settings for new objects placed in the specified bucket. See below.
  BucketObjectLockConfigurationV2Rule({
    required this.defaultRetention,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRetention'] = defaultRetention.toMap();
    return map;
  }

  factory BucketObjectLockConfigurationV2Rule.fromMap(
      Map<String, dynamic> map) {
    return BucketObjectLockConfigurationV2Rule(
      defaultRetention:
          BucketObjectLockConfigurationV2RuleDefaultRetention.fromMap(
              (map['defaultRetention'] as Map).cast<String, dynamic>()),
    );
  }
}
