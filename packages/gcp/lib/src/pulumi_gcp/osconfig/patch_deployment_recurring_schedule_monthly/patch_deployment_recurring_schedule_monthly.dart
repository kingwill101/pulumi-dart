// ignore_for_file: unused_element, unnecessary_cast

import '../patch_deployment_recurring_schedule_monthly_week_day_of_month/patch_deployment_recurring_schedule_monthly_week_day_of_month.dart';

class PatchDeploymentRecurringScheduleMonthly {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
  /// Months without the target day will be skipped. For example, a schedule to run "every month on the 31st"
  /// will not run in February, April, June, etc.
  final int? monthDay;

  /// Week day in a month.
  /// Structure is documented below.
  final PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth? weekDayOfMonth;

  PatchDeploymentRecurringScheduleMonthly({
    this.monthDay,
    this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final monthDayValue = monthDay;
    if (monthDayValue != null) {
      map['monthDay'] = monthDayValue;
    }
    final weekDayOfMonthValue = weekDayOfMonth;
    if (weekDayOfMonthValue != null) {
      map['weekDayOfMonth'] = weekDayOfMonthValue.toMap();
    }
    return map;
  }

  factory PatchDeploymentRecurringScheduleMonthly.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleMonthly(
      monthDay: map['monthDay'] == null ? null : map['monthDay'] as int,
      weekDayOfMonth: map['weekDayOfMonth'] == null
          ? null
          : PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth.fromMap(
              (map['weekDayOfMonth'] as Map).cast<String, dynamic>()),
    );
  }
}
