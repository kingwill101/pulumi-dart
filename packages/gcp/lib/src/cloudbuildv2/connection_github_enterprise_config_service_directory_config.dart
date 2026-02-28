// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubEnterpriseConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [ConnectionGithubEnterpriseConfigServiceDirectoryConfig].
  /// [service] Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ConnectionGithubEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
