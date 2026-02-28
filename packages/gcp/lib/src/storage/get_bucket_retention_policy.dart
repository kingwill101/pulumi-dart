// ignore_for_file: unused_element, unnecessary_cast

class GetBucketRetentionPolicy {
  /// If set to true, the bucket will be locked and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action.
  final bool isLocked;

  /// The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.
  final String retentionPeriod;

  /// Creates a new [GetBucketRetentionPolicy].
  /// [isLocked] If set to true, the bucket will be locked and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action.
  /// [retentionPeriod] The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.
  GetBucketRetentionPolicy({
    required this.isLocked,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isLocked'] = isLocked;
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory GetBucketRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return GetBucketRetentionPolicy(
      isLocked: map['isLocked'] as bool,
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
