// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleNoncurrentVersionExpiration {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final int? newerNoncurrentVersions;

  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  final int noncurrentDays;

  /// Creates a new [BucketLifecycleConfigurationRuleNoncurrentVersionExpiration].
  /// [newerNoncurrentVersions] Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  /// [noncurrentDays] Number of days an object is noncurrent before Amazon S3 can perform the associated action. Must be a positive integer.
  BucketLifecycleConfigurationRuleNoncurrentVersionExpiration({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final newerNoncurrentVersionsValue = newerNoncurrentVersions;
    if (newerNoncurrentVersionsValue != null) {
      map['newerNoncurrentVersions'] = newerNoncurrentVersionsValue;
    }
    map['noncurrentDays'] = noncurrentDays;
    return map;
  }

  factory BucketLifecycleConfigurationRuleNoncurrentVersionExpiration.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleNoncurrentVersionExpiration(
      newerNoncurrentVersions: map['newerNoncurrentVersions'] == null
          ? null
          : map['newerNoncurrentVersions'] as int,
      noncurrentDays: map['noncurrentDays'] as int,
    );
  }
}
