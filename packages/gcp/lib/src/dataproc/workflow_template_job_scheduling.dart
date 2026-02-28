// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateJobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10.
  final int? maxFailuresPerHour;

  /// Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240
  final int? maxFailuresTotal;

  /// Creates a new [WorkflowTemplateJobScheduling].
  /// [maxFailuresPerHour] Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10.
  /// [maxFailuresTotal] Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240
  WorkflowTemplateJobScheduling({
    this.maxFailuresPerHour,
    this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxFailuresPerHourValue = maxFailuresPerHour;
    if (maxFailuresPerHourValue != null) {
      map['maxFailuresPerHour'] = maxFailuresPerHourValue;
    }
    final maxFailuresTotalValue = maxFailuresTotal;
    if (maxFailuresTotalValue != null) {
      map['maxFailuresTotal'] = maxFailuresTotalValue;
    }
    return map;
  }

  factory WorkflowTemplateJobScheduling.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobScheduling(
      maxFailuresPerHour: map['maxFailuresPerHour'] == null
          ? null
          : map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] == null
          ? null
          : map['maxFailuresTotal'] as int,
    );
  }
}
