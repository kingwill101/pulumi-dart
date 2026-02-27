// ignore_for_file: unused_element, unnecessary_cast

class BucketVersioning {
  /// Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket.
  final bool? enabled;

  /// Enable MFA delete for either `Change the versioning state of your bucket` or `Permanently delete an object version`. Default is `false`. This cannot be used to toggle this setting but is available to allow managed buckets to reflect the state in AWS
  final bool? mfaDelete;

  BucketVersioning({
    this.enabled,
    this.mfaDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final mfaDeleteValue = mfaDelete;
    if (mfaDeleteValue != null) {
      map['mfaDelete'] = mfaDeleteValue;
    }
    return map;
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      mfaDelete: map['mfaDelete'] == null ? null : map['mfaDelete'] as bool,
    );
  }
}
