// ignore_for_file: unused_element, unnecessary_cast

class JobScheduling {
  /// Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final int maxFailuresPerHour;

  /// Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  final int maxFailuresTotal;

  /// Creates a new [JobScheduling].
  /// [maxFailuresPerHour] Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  /// [maxFailuresTotal] Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  JobScheduling({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailuresPerHour': maxFailuresPerHour,
      'maxFailuresTotal': maxFailuresTotal,
    };
  }

  factory JobScheduling.fromMap(Map<String, dynamic> map) {
    return JobScheduling(
      maxFailuresPerHour: map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] as int,
    );
  }
}
