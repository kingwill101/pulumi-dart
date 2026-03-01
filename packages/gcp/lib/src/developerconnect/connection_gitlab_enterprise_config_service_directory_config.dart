// ignore_for_file: unused_element, unnecessary_cast


class ConnectionGitlabEnterpriseConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [ConnectionGitlabEnterpriseConfigServiceDirectoryConfig].
  /// [service] Required. The Service Directory service name.
  ConnectionGitlabEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionGitlabEnterpriseConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabEnterpriseConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}

