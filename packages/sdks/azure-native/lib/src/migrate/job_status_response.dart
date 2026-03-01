// ignore_for_file: unused_element, unnecessary_cast


/// Defines the job status.
class JobStatusResponse {
  /// Defines the job name.
  final String jobName;
  /// Gets or sets the monitoring job percentage.
  final String jobProgress;

  /// Creates a new [JobStatusResponse].
  /// [jobName] Defines the job name.
  /// [jobProgress] Gets or sets the monitoring job percentage.
  JobStatusResponse({
    required this.jobName,
    required this.jobProgress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobName': jobName,
      'jobProgress': jobProgress,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      jobName: map['jobName'] as String,
      jobProgress: map['jobProgress'] as String,
    );
  }
}

