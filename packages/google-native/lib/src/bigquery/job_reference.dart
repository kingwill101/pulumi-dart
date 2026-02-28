// ignore_for_file: unused_element, unnecessary_cast

class JobReference {
  /// [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final String? jobId;

  /// The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  final String? location;

  /// [Required] The ID of the project containing this job.
  final String? project;

  /// Creates a new [JobReference].
  /// [jobId] [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  /// [location] The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  /// [project] [Required] The ID of the project containing this job.
  JobReference({
    this.jobId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jobIdValue = jobId;
    if (jobIdValue != null) {
      map['jobId'] = jobIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory JobReference.fromMap(Map<String, dynamic> map) {
    return JobReference(
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
