// ignore_for_file: unused_element, unnecessary_cast

/// Job scheduling options.
class JobSchedulingResponse {
  /// Optional. Maximum number of times per hour a driver can be restarted as a result of driver exiting with non-zero code before job is reported failed.A job might be reported as thrashing if the driver exits with a non-zero code four times within a 10-minute window.Maximum value is 10.Note: This restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  final int maxFailuresPerHour;

  /// Optional. Maximum total number of times a driver can be restarted as a result of the driver exiting with a non-zero code. After the maximum number is reached, the job will be reported as failed.Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  final int maxFailuresTotal;

  /// Creates a new [JobSchedulingResponse].
  /// [maxFailuresPerHour] Optional. Maximum number of times per hour a driver can be restarted as a result of driver exiting with non-zero code before job is reported failed.A job might be reported as thrashing if the driver exits with a non-zero code four times within a 10-minute window.Maximum value is 10.Note: This restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  /// [maxFailuresTotal] Optional. Maximum total number of times a driver can be restarted as a result of the driver exiting with a non-zero code. After the maximum number is reached, the job will be reported as failed.Maximum value is 240.Note: Currently, this restartable job option is not supported in Dataproc workflow templates (https://cloud.google.com/dataproc/docs/concepts/workflows/using-workflows#adding_jobs_to_a_template).
  JobSchedulingResponse({
    required this.maxFailuresPerHour,
    required this.maxFailuresTotal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxFailuresPerHour'] = maxFailuresPerHour;
    map['maxFailuresTotal'] = maxFailuresTotal;
    return map;
  }

  factory JobSchedulingResponse.fromMap(Map<String, dynamic> map) {
    return JobSchedulingResponse(
      maxFailuresPerHour: map['maxFailuresPerHour'] as int,
      maxFailuresTotal: map['maxFailuresTotal'] as int,
    );
  }
}
