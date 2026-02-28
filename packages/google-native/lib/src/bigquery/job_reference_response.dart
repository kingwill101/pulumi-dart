// ignore_for_file: unused_element, unnecessary_cast


class JobReferenceResponse {
  /// [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final String jobId;
  /// The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  final String location;
  /// [Required] The ID of the project containing this job.
  final String project;

  /// Creates a new [JobReferenceResponse].
  /// [jobId] [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  /// [location] The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.
  /// [project] [Required] The ID of the project containing this job.
  JobReferenceResponse({
    required this.jobId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': jobId,
      'location': location,
      'project': project,
    };
  }

  factory JobReferenceResponse.fromMap(Map<String, dynamic> map) {
    return JobReferenceResponse(
      jobId: map['jobId'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
    );
  }
}

