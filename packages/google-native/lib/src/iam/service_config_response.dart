// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a service.
class ServiceConfigResponse {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final String domain;

  /// Creates a new [ServiceConfigResponse].
  /// [domain] Optional. Domain name of the service. Example: console.cloud.google
  ServiceConfigResponse({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory ServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConfigResponse(
      domain: map['domain'] as String,
    );
  }
}
