// ignore_for_file: unused_element, unnecessary_cast

/// ServiceDirectoryConfig represents Service Directory configuration for a connection.
class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
