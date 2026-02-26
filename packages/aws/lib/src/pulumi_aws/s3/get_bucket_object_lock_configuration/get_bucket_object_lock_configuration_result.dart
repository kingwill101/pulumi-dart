// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_object_lock_configuration_rule/get_bucket_object_lock_configuration_rule.dart';

/// Result data returned by getBucketObjectLockConfiguration.
class GetBucketObjectLockConfigurationResult {
  final String bucket;
  final String? expectedBucketOwner;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Indicates whether this bucket has an Object Lock configuration enabled.
  final String objectLockEnabled;
  final String region;

  /// Object lock rule for the specified object. See Rule below.
  final List<GetBucketObjectLockConfigurationRule> rules;

  GetBucketObjectLockConfigurationResult({
    required this.bucket,
    this.expectedBucketOwner,
    required this.id,
    required this.objectLockEnabled,
    required this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    map['id'] = id;
    map['objectLockEnabled'] = objectLockEnabled;
    map['region'] = region;
    map['rules'] = Input.encodeList<GetBucketObjectLockConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory GetBucketObjectLockConfigurationResult.fromMap(
      Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationResult(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      id: map['id'] as String,
      objectLockEnabled: map['objectLockEnabled'] as String,
      region: map['region'] as String,
      rules: Input.decodeList<GetBucketObjectLockConfigurationRule>(
          map['rules'],
          (value) => GetBucketObjectLockConfigurationRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
