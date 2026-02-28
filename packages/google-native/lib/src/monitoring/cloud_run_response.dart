// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Run service. Learn more at https://cloud.google.com/run.
class CloudRunResponse {
  /// The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String location;

  /// The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String serviceName;

  /// Creates a new [CloudRunResponse].
  /// [location] The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  /// [serviceName] The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  CloudRunResponse({
    required this.location,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['serviceName'] = serviceName;
    return map;
  }

  factory CloudRunResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunResponse(
      location: map['location'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
