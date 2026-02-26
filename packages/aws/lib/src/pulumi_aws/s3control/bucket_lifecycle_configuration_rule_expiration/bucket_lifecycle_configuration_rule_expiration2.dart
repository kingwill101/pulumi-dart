// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleExpiration2 {
  /// Date the object is to be deleted. Should be in `YYYY-MM-DD` date format, e.g., `2020-09-30`.
  final String? date;

  /// Number of days before the object is to be deleted.
  final int? days;

  /// Enable to remove a delete marker with no noncurrent versions. Cannot be specified with <span pulumi-lang-nodejs="`date`" pulumi-lang-dotnet="`Date`" pulumi-lang-go="`date`" pulumi-lang-python="`date`" pulumi-lang-yaml="`date`" pulumi-lang-java="`date`">`date`</span> or <span pulumi-lang-nodejs="`days`" pulumi-lang-dotnet="`Days`" pulumi-lang-go="`days`" pulumi-lang-python="`days`" pulumi-lang-yaml="`days`" pulumi-lang-java="`days`">`days`</span>.
  final bool? expiredObjectDeleteMarker;

  BucketLifecycleConfigurationRuleExpiration2({
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

  factory BucketLifecycleConfigurationRuleExpiration2.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleExpiration2(
      date: map['date'] == null ? null : map['date'] as String,
      days: map['days'] == null ? null : map['days'] as int,
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null
          ? null
          : map['expiredObjectDeleteMarker'] as bool,
    );
  }
}
