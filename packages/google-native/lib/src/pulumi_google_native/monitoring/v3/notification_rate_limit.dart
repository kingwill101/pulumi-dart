// ignore_for_file: unused_element, unnecessary_cast

/// Control over the rate of notifications sent to this alert policy's notification channels.
class NotificationRateLimit {
  /// Not more than one notification per period.
  final String? period;

  NotificationRateLimit({
    this.period,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    return map;
  }

  factory NotificationRateLimit.fromMap(Map<String, dynamic> map) {
    return NotificationRateLimit(
      period: map['period'] == null ? null : map['period'] as String,
    );
  }
}
