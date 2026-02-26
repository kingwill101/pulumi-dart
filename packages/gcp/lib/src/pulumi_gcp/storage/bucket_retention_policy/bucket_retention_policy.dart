// ignore_for_file: unused_element, unnecessary_cast

class BucketRetentionPolicy {
  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the bucket will be [locked](https://cloud.google.com/storage/docs/using-bucket-lock#lock-bucket) and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action.
  final bool? isLocked;

  /// The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.
  final String retentionPeriod;

  BucketRetentionPolicy({
    this.isLocked,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isLockedValue = isLocked;
    if (isLockedValue != null) {
      map['isLocked'] = isLockedValue;
    }
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory BucketRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BucketRetentionPolicy(
      isLocked: map['isLocked'] == null ? null : map['isLocked'] as bool,
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
