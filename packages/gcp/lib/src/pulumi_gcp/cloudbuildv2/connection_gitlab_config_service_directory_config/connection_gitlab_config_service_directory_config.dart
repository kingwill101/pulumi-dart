// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGitlabConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionGitlabConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionGitlabConfigServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGitlabConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
