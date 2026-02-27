// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Run service. Learn more at https://cloud.google.com/run.
class CloudRunMonitoringV3 {
  /// The location the service is run. Corresponds to the location resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String? location;

  /// The name of the Cloud Run service. Corresponds to the service_name resource label in the cloud_run_revision monitored resource (https://cloud.google.com/monitoring/api/resources#tag_cloud_run_revision).
  final String? serviceName;

  CloudRunMonitoringV3({
    this.location,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    return map;
  }

  factory CloudRunMonitoringV3.fromMap(Map<String, dynamic> map) {
    return CloudRunMonitoringV3(
      location: map['location'] == null ? null : map['location'] as String,
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}
