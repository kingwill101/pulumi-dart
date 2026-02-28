// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentRecurringScheduleWeekly {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String dayOfWeek;

  /// Creates a new [PatchDeploymentRecurringScheduleWeekly].
  /// [dayOfWeek] IANA Time Zone Database time zone, e.g. "America/New_York".
  PatchDeploymentRecurringScheduleWeekly({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    return map;
  }

  factory PatchDeploymentRecurringScheduleWeekly.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleWeekly(
      dayOfWeek: map['dayOfWeek'] as String,
    );
  }
}
