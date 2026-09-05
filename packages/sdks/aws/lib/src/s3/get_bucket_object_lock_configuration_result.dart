// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_lock_configuration_rule.dart';

/// Result data returned by getBucketObjectLockConfiguration.
class GetBucketObjectLockConfigurationResult {
  final String? bucket;
  final String? expectedBucketOwner;
  /// Whether this bucket has an Object Lock configuration enabled.
  final String? objectLockEnabled;
  final String? region;
  /// Object lock rule for the specified object. See Rule below.
  final List<GetBucketObjectLockConfigurationRule>? rules;

  /// Creates a new [GetBucketObjectLockConfigurationResult].
  /// [bucket] Optional.
  /// [expectedBucketOwner] Optional.
  /// [objectLockEnabled] Whether this bucket has an Object Lock configuration enabled.
  /// [region] Optional.
  /// [rules] Object lock rule for the specified object. See Rule below.
  const GetBucketObjectLockConfigurationResult({
    this.bucket,
    this.expectedBucketOwner,
    this.objectLockEnabled,
    this.region,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'objectLockEnabled': ?objectLockEnabled,
      'region': ?region,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketObjectLockConfigurationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBucketObjectLockConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectLockEnabled: (() { final guardedValue = map['objectLockEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketObjectLockConfigurationRule>(guardedValue, (value) => GetBucketObjectLockConfigurationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
