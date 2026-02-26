// ignore_for_file: unused_element, unnecessary_cast

class JobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final int maxFailuresPerHour;

  /// Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final int maxFailuresTotal;

  JobScheduling({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxFailuresPerHour'] = maxFailuresPerHour;
    map['maxFailuresTotal'] = maxFailuresTotal;
    return map;
  }

  factory JobScheduling.fromMap(Map<String, dynamic> map) {
    return JobScheduling(
      maxFailuresPerHour: map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] as int,
    );
  }
}
