// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleExpiration {
  /// Date the object is to be moved or deleted. The date value must be in [RFC3339 full-date format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6) e.g. `2023-08-22`.
  final String? date;

  /// Lifetime, in days, of the objects that are subject to the rule. The value must be a non-zero positive integer.
  final int? days;

  /// Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to `true`, the delete marker will be expired; if set to `false` the policy takes no action.
  final bool? expiredObjectDeleteMarker;

  BucketLifecycleConfigurationRuleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateValue = date;
    if (dateValue != null) {
      map['date'] = dateValue;
    }
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    final expiredObjectDeleteMarkerValue = expiredObjectDeleteMarker;
    if (expiredObjectDeleteMarkerValue != null) {
      map['expiredObjectDeleteMarker'] = expiredObjectDeleteMarkerValue;
    }
    return map;
  }

  factory BucketLifecycleConfigurationRuleExpiration.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleExpiration(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null
          ? null
          : map['expiredObjectDeleteMarker'] as bool,
    );
  }
}
