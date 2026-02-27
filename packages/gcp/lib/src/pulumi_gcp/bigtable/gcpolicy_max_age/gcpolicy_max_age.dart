// ignore_for_file: unused_element, unnecessary_cast

class GCPolicyMaxAge {
  /// Number of days before applying GC policy.
  final int? days;

  /// Duration before applying GC policy (ex. "8h"). This is required when `days` isn't set
  ///
  /// -----
  final String? duration;

  GCPolicyMaxAge({
    this.days,
    this.duration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    return map;
  }

  factory GCPolicyMaxAge.fromMap(Map<String, dynamic> map) {
    return GCPolicyMaxAge(
      days: map['days'] == null ? null : map['days'] as int,
      duration: map['duration'] == null ? null : map['duration'] as String,
    );
  }
}
