// ignore_for_file: unused_element, unnecessary_cast

/// Control over the rate of notifications sent to this alert policy's notification channels.
class NotificationRateLimitResponse {
  /// Not more than one notification per period.
  final String period;

  NotificationRateLimitResponse({
    required this.period,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['period'] = period;
    return map;
  }

  factory NotificationRateLimitResponse.fromMap(Map<String, dynamic> map) {
    return NotificationRateLimitResponse(
      period: map['period'] as String,
    );
  }
}
