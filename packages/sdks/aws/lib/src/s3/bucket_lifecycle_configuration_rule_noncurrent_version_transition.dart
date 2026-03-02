// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleNoncurrentVersionTransition {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final pulumi.Input<int>? newerNoncurrentVersions;
  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action.
  final pulumi.Input<int> noncurrentDays;
  /// Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleConfigurationRuleNoncurrentVersionTransition].
  /// [newerNoncurrentVersions] Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  /// [noncurrentDays] Number of days an object is noncurrent before Amazon S3 can perform the associated action.
  /// [storageClass] Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  BucketLifecycleConfigurationRuleNoncurrentVersionTransition({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'noncurrentDays': noncurrentDays,
      'storageClass': storageClass,
    };
  }

  factory BucketLifecycleConfigurationRuleNoncurrentVersionTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleNoncurrentVersionTransition(
      newerNoncurrentVersions: map['newerNoncurrentVersions'] == null ? null : ((map['newerNoncurrentVersions'] as int).input()).input(),
      noncurrentDays: (map['noncurrentDays'] as int).input(),
      storageClass: (map['storageClass'] as String).input(),
    );
  }
}

