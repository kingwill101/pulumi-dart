// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Cloud Run destination.
class CloudRun {
  /// Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final String? path;

  /// The region the Cloud Run service is deployed in.
  final String region;

  /// The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project as the trigger object can be addressed.
  final String service;

  /// Creates a new [CloudRun].
  /// [path] Optional. The relative path on the Cloud Run service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  /// [region] The region the Cloud Run service is deployed in.
  /// [service] The name of the Cloud Run service being addressed. See https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services. Only services located in the same project as the trigger object can be addressed.
  CloudRun({this.path, required this.region, required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'region': region,
      'service': service,
    };
  }

  factory CloudRun.fromMap(Map<String, dynamic> map) {
    return CloudRun(
      path: map['path'] == null ? null : map['path'] as String,
      region: map['region'] as String,
      service: map['service'] as String,
    );
  }
}
