// ignore_for_file: unused_element, unnecessary_cast

/// Control over the rate of notifications sent to this alert policy's notification channels.
class NotificationRateLimit {
  /// Not more than one notification per period.
  final String? period;

  /// Creates a new [NotificationRateLimit].
  /// [period] Not more than one notification per period.
  NotificationRateLimit({this.period});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'period': ?period};
  }

  factory NotificationRateLimit.fromMap(Map<String, dynamic> map) {
    return NotificationRateLimit(
      period: map['period'] == null ? null : map['period'] as String,
    );
  }
}
