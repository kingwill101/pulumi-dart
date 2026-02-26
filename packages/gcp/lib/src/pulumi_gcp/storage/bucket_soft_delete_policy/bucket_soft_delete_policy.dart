// ignore_for_file: unused_element, unnecessary_cast

class BucketSoftDeletePolicy {
  /// Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  final String? effectiveTime;

  /// The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. Default value is 604800. The value must be in between 604800(7 days) and 7776000(90 days). **Note**: To disable the soft delete policy on a bucket, This field must be set to 0.
  final int? retentionDurationSeconds;

  BucketSoftDeletePolicy({
    this.effectiveTime,
    this.retentionDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveTimeValue = effectiveTime;
    if (effectiveTimeValue != null) {
      map['effectiveTime'] = effectiveTimeValue;
    }
    final retentionDurationSecondsValue = retentionDurationSeconds;
    if (retentionDurationSecondsValue != null) {
      map['retentionDurationSeconds'] = retentionDurationSecondsValue;
    }
    return map;
  }

  factory BucketSoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return BucketSoftDeletePolicy(
      effectiveTime:
          map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      retentionDurationSeconds: map['retentionDurationSeconds'] == null
          ? null
          : map['retentionDurationSeconds'] as int,
    );
  }
}
