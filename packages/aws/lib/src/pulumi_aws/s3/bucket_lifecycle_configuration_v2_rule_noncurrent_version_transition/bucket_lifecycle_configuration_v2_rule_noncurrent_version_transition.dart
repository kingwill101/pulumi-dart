// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition {
  /// Number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer.
  final int? newerNoncurrentVersions;

  /// Number of days an object is noncurrent before Amazon S3 can perform the associated action.
  final int noncurrentDays;

  /// Class of storage used to store the object. Valid Values: `GLACIER`, `STANDARD_IA`, `ONEZONE_IA`, `INTELLIGENT_TIERING`, `DEEP_ARCHIVE`, `GLACIER_IR`.
  final String storageClass;

  BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition({
    this.newerNoncurrentVersions,
    required this.noncurrentDays,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final newerNoncurrentVersionsValue = newerNoncurrentVersions;
    if (newerNoncurrentVersionsValue != null) {
      map['newerNoncurrentVersions'] = newerNoncurrentVersionsValue;
    }
    map['noncurrentDays'] = noncurrentDays;
    map['storageClass'] = storageClass;
    return map;
  }

  factory BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition(
      newerNoncurrentVersions: map['newerNoncurrentVersions'] == null
          ? null
          : map['newerNoncurrentVersions'] as int,
      noncurrentDays: map['noncurrentDays'] as int,
      storageClass: map['storageClass'] as String,
    );
  }
}
