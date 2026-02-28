// ignore_for_file: unused_element, unnecessary_cast


/// Cloud Endpoints service. Learn more at https://cloud.google.com/endpoints.
class CloudEndpointsResponse {
  /// The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  final String service;

  /// Creates a new [CloudEndpointsResponse].
  /// [service] The name of the Cloud Endpoints service underlying this service. Corresponds to the service resource label in the api monitored resource (https://cloud.google.com/monitoring/api/resources#tag_api).
  CloudEndpointsResponse({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory CloudEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointsResponse(
      service: map['service'] as String,
    );
  }
}

