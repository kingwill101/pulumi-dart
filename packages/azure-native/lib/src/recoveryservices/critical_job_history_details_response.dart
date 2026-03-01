// ignore_for_file: unused_element, unnecessary_cast


/// Critical past job details of the migration item.
class CriticalJobHistoryDetailsResponse {
  /// The ARM Id of the job being executed.
  final String jobId;
  /// The job name.
  final String jobName;
  /// The job state.
  final String jobStatus;
  /// The start time of the job.
  final String startTime;

  /// Creates a new [CriticalJobHistoryDetailsResponse].
  /// [jobId] The ARM Id of the job being executed.
  /// [jobName] The job name.
  /// [jobStatus] The job state.
  /// [startTime] The start time of the job.
  CriticalJobHistoryDetailsResponse({
    required this.jobId,
    required this.jobName,
    required this.jobStatus,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'jobName': jobName,
      'jobStatus': jobStatus,
      'startTime': startTime,
    };
  }

  factory CriticalJobHistoryDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CriticalJobHistoryDetailsResponse(
      jobId: map['jobId'] as String,
      jobName: map['jobName'] as String,
      jobStatus: map['jobStatus'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

