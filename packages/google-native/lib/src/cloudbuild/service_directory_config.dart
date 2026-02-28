// ignore_for_file: unused_element, unnecessary_cast

/// ServiceDirectoryConfig represents Service Directory configuration for a SCM host connection.
class ServiceDirectoryConfig {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String? service;

  /// Creates a new [ServiceDirectoryConfig].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory ServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ServiceDirectoryConfig(
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
