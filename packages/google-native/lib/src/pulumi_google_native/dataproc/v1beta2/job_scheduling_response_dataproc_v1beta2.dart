// ignore_for_file: unused_element, unnecessary_cast

/// Job scheduling options.
class JobSchedulingResponseDataprocV1beta2 {
  /// Optional. Maximum number of times per hour a driver may be restarted as a result of driver terminating with non-zero code before job is reported failed.A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window.Maximum value is 10.
  final int maxFailuresPerHour;

  /// Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240.
  final int maxFailuresTotal;

  JobSchedulingResponseDataprocV1beta2({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxFailuresPerHour'] = maxFailuresPerHour;
    map['maxFailuresTotal'] = maxFailuresTotal;
    return map;
  }

  factory JobSchedulingResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return JobSchedulingResponseDataprocV1beta2(
      maxFailuresPerHour: map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] as int,
    );
  }
}
