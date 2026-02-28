// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleExpirationS3Control {
  /// Date the object is to be deleted. Should be in `YYYY-MM-DD` date format, e.g., `2020-09-30`.
  final String? date;

  /// Number of days before the object is to be deleted.
  final int? days;

  /// Enable to remove a delete marker with no noncurrent versions. Cannot be specified with `date` or `days`.
  final bool? expiredObjectDeleteMarker;

  /// Creates a new [BucketLifecycleConfigurationRuleExpirationS3Control].
  /// [date] Date the object is to be deleted. Should be in `YYYY-MM-DD` date format, e.g., `2020-09-30`.
  /// [days] Number of days before the object is to be deleted.
  /// [expiredObjectDeleteMarker] Enable to remove a delete marker with no noncurrent versions. Cannot be specified with `date` or `days`.
  BucketLifecycleConfigurationRuleExpirationS3Control({
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

  factory BucketLifecycleConfigurationRuleExpirationS3Control.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleExpirationS3Control(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null
          ? null
          : map['expiredObjectDeleteMarker'] as bool,
    );
  }
}
