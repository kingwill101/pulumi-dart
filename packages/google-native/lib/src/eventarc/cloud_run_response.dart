// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Cloud Run destination.
class CloudRunResponse {
  /// Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final String path;

  /// The region the Cloud Run service is deployed in.
  final String region;

  /// The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project as the trigger object can be addressed.
  final String service;

  /// Creates a new [CloudRunResponse].
  /// [path] Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [region] The region the Cloud Run service is deployed in.
  /// [service] The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project as the trigger object can be addressed.
  CloudRunResponse({
    required this.path,
    required this.region,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['region'] = region;
    map['service'] = service;
    return map;
  }

  factory CloudRunResponse.fromMap(Map<String, dynamic> map) {
    return CloudRunResponse(
      path: map['path'] as String,
      region: map['region'] as String,
      service: map['service'] as String,
    );
  }
}
