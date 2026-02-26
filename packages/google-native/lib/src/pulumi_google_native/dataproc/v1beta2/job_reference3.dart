// ignore_for_file: unused_element, unnecessary_cast

/// Encapsulates the full scoping used to reference a job.
class JobReference3 {
  /// Optional. The job ID, which must be unique within the project. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or hyphens (-). The maximum length is 100 characters.If not specified by the caller, the job ID will be provided by the server.
  final String? jobId;

  /// Optional. The ID of the Google Cloud Platform project that the job belongs to. If specified, must match the request project ID.
  final String? project;

  JobReference3({
    this.jobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jobIdValue = jobId;
    if (jobIdValue != null) {
      map['jobId'] = jobIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory JobReference3.fromMap(Map<String, dynamic> map) {
    return JobReference3(
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
