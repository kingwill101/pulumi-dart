// ignore_for_file: unused_element, unnecessary_cast

/// ServiceDirectoryConfig represents Service Directory configuration for a SCM host connection.
class ServiceDirectoryConfigResponse {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [ServiceDirectoryConfigResponse].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ServiceDirectoryConfigResponse({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceDirectoryConfigResponse(
      service: map['service'] as String,
    );
  }
}
