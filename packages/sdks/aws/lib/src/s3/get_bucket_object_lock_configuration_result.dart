// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_object_lock_configuration_rule.dart';

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

  /// Creates a new [GetBucketObjectLockConfigurationResult].
  /// [bucket] Required.
  /// [expectedBucketOwner] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectLockEnabled] Indicates whether this bucket has an Object Lock configuration enabled.
  /// [region] Required.
  /// [rules] Object lock rule for the specified object. See Rule below.
  GetBucketObjectLockConfigurationResult({
    required this.bucket,
    this.expectedBucketOwner,
    required this.id,
    required this.objectLockEnabled,
    required this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'id': id,
      'objectLockEnabled': objectLockEnabled,
      'region': region,
      'rules': pulumi.Input.encodeList<GetBucketObjectLockConfigurationRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetBucketObjectLockConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationResult(
      bucket: map['bucket'] as String,
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      objectLockEnabled: map['objectLockEnabled'] as String,
      region: map['region'] as String,
      rules: pulumi.Input.decodeList<GetBucketObjectLockConfigurationRule>(map['rules']!, (value) => GetBucketObjectLockConfigurationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

