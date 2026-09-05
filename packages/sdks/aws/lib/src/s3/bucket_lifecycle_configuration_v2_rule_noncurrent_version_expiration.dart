// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final pulumi.Input<int?>? newerNoncurrentVersions;
  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  final pulumi.Input<int> noncurrentDays;

  /// Creates a new [BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration].
  /// [newerNoncurrentVersions] Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  /// [noncurrentDays] Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  const BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'noncurrentDays': noncurrentDays,
    };
  }

  factory BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration(
      newerNoncurrentVersions: (() { final guardedValue = map['newerNoncurrentVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      noncurrentDays: pulumi.Input.fromValue((map['noncurrentDays'] as num).toInt()),
    );
  }
}
