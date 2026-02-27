// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Run service. Learn more at https://cloud.google.com/run.
class CloudRunResponseMonitoringV3 {
  /// The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String location;

  /// The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String serviceName;

  CloudRunResponseMonitoringV3({
    required this.location,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['serviceName'] = serviceName;
    return map;
  }

  factory CloudRunResponseMonitoringV3.fromMap(Map<String, dynamic> map) {
    return CloudRunResponseMonitoringV3(
      location: map['location'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
