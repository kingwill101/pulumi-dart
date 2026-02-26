// ignore_for_file: unused_element, unnecessary_cast

/// CloudRunMetadata contains information from a Cloud Run deployment.
class CloudRunMetadataResponse {
  /// The name of the Cloud Run job that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/jobs/{job_name}`.
  final String job;

  /// The Cloud Run Revision id associated with a `Rollout`.
  final String revision;

  /// The name of the Cloud Run Service that is associated with a `Rollout`. Format is `projects/{project}/locations/{location}/services/{service}`.
  final String service;

  /// The Cloud Run Service urls that are associated with a `Rollout`.
  final List<String> serviceUrls;

  CloudRunMetadataResponse({
    required this.job,
    required this.revision,
    required this.service,
    required this.serviceUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['job'] = job;
    map['revision'] = revision;
    map['service'] = service;
    map['serviceUrls'] = serviceUrls;
    return map;
  }

  factory CloudRunMetadataResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunMetadataResponse(
      job: map['job'] as String,
      revision: map['revision'] as String,
      service: map['service'] as String,
      serviceUrls: (map['serviceUrls'] as List).cast<String>(),
    );
  }
}
