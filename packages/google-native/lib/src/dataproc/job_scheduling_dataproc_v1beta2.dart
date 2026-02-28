// ignore_for_file: unused_element, unnecessary_cast

/// Job scheduling options.
class JobSchedulingDataprocV1beta2 {
  /// Optional. Maximum number of times per hour a driver may be restarted as a result of driver terminating with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.
  final int? maxFailuresPerHour;

  /// Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.
  final int? maxFailuresTotal;

  /// Creates a new [JobSchedulingDataprocV1beta2].
  /// [maxFailuresPerHour] Optional. Maximum number of times per hour a driver may be restarted as a result of driver terminating with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.
  /// [maxFailuresTotal] Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.
  JobSchedulingDataprocV1beta2({
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

  factory JobSchedulingDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobSchedulingDataprocV1beta2(
      maxFailuresPerHour: map['maxFailuresPerHour'] == null
          ? null
          : map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] == null
          ? null
          : map['maxFailuresTotal'] as int,
    );
  }
}
