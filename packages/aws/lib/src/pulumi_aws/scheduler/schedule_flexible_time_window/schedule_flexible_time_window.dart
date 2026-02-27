// ignore_for_file: unused_element, unnecessary_cast

class ScheduleFlexibleTimeWindow {
  /// Maximum time window during which a schedule can be invoked. Ranges from `1` to `1440` minutes.
  final int? maximumWindowInMinutes;

  /// Determines whether the schedule is invoked within a flexible time window. One of: `OFF`, `FLEXIBLE`.
  final String mode;

  ScheduleFlexibleTimeWindow({
    this.maximumWindowInMinutes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumWindowInMinutesValue = maximumWindowInMinutes;
    if (maximumWindowInMinutesValue != null) {
      map['maximumWindowInMinutes'] = maximumWindowInMinutesValue;
    }
    map['mode'] = mode;
    return map;
  }

  factory ScheduleFlexibleTimeWindow.fromMap(Map<String, dynamic> map) {
    return ScheduleFlexibleTimeWindow(
      maximumWindowInMinutes: map['maximumWindowInMinutes'] == null
          ? null
          : map['maximumWindowInMinutes'] as int,
      mode: map['mode'] as String,
    );
  }
}
