// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleNoncurrentVersionExpiration {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final pulumi.Input<int>? newerNoncurrentVersions;

  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  final pulumi.Input<int> noncurrentDays;

  /// Creates a new [BucketLifecycleConfigurationRuleNoncurrentVersionExpiration].
  /// [newerNoncurrentVersions] Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  /// [noncurrentDays] Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  BucketLifecycleConfigurationRuleNoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newerNoncurrentVersions': ?newerNoncurrentVersions,
      'noncurrentDays': noncurrentDays,
    };
  }

  factory BucketLifecycleConfigurationRuleNoncurrentVersionExpiration.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketLifecycleConfigurationRuleNoncurrentVersionExpiration(
      newerNoncurrentVersions: (() {
        final guardedValue = map['newerNoncurrentVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      noncurrentDays: pulumi.Input.fromValue(map['noncurrentDays'] as int),
    );
  }
}
