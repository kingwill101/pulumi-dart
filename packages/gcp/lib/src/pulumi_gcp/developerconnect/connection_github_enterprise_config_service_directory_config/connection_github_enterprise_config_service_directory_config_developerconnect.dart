// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubEnterpriseConfigServiceDirectoryConfigDeveloperconnect {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionGithubEnterpriseConfigServiceDirectoryConfigDeveloperconnect({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionGithubEnterpriseConfigServiceDirectoryConfigDeveloperconnect.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfigServiceDirectoryConfigDeveloperconnect(
      service: map['service'] as String,
    );
  }
}
