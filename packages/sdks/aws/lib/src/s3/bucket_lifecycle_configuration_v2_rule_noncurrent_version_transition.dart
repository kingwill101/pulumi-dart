// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final pulumi.Input<int>? newerNoncurrentVersions;
  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action.
  final pulumi.Input<int> noncurrentDays;
  /// Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  final pulumi.Input<String> storageClass;

  /// Creates a new [BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition].
  /// [newerNoncurrentVersions] Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  /// [noncurrentDays] Number of days an object is noncurrent before Amazon S3 can perform the associated action.
  /// [storageClass] Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition({
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

  factory BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition(
      newerNoncurrentVersions: (() { final guardedValue = map['newerNoncurrentVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      noncurrentDays: pulumi.Input.fromValue(map['noncurrentDays'] as int),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}

