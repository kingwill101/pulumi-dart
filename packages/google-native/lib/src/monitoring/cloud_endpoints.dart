// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.
class CloudEndpoints {
  /// The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  final String? service;

  /// Creates a new [CloudEndpoints].
  /// [service] The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  CloudEndpoints({this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'service': ?service};
  }

  factory CloudEndpoints.fromMap(Map<String, dynamic> map) {
    return CloudEndpoints(
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
