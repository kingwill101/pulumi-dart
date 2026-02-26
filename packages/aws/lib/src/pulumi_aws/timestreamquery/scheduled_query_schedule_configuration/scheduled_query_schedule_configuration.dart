// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryScheduleConfiguration {
  /// When to trigger the scheduled query run. This can be a cron expression or a rate expression.
  final String scheduleExpression;

  ScheduledQueryScheduleConfiguration({
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduleExpression'] = scheduleExpression;
    return map;
  }

  factory ScheduledQueryScheduleConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryScheduleConfiguration(
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}
