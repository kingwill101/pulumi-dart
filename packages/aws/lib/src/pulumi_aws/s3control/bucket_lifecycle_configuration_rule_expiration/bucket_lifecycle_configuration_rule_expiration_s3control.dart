// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleExpirationS3control {
  /// Date the object is to be deleted. Should be in `YYYY-MM-DD` date format, e.g., `2020-09-30`.
  final String? date;

  /// Number of days before the object is to be deleted.
  final int? days;

  /// Enable to remove a delete marker with no noncurrent versions. Cannot be specified with `date` or `days`.
  final bool? expiredObjectDeleteMarker;

  BucketLifecycleConfigurationRuleExpirationS3control({
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

  factory BucketLifecycleConfigurationRuleExpirationS3control.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleExpirationS3control(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null
          ? null
          : map['expiredObjectDeleteMarker'] as bool,
    );
  }
}
