// ignore_for_file: unused_element, unnecessary_cast


class TaskSchedule {
  /// Specifies the schedule you want your task to use for repeated executions. For more information, see [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  final String scheduleExpression;

  /// Creates a new [TaskSchedule].
  /// [scheduleExpression] Specifies the schedule you want your task to use for repeated executions. For more information, see [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  TaskSchedule({
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleExpression': scheduleExpression,
    };
  }

  factory TaskSchedule.fromMap(Map<String, dynamic> map) {
    return TaskSchedule(
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}

