// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubEnterpriseConfigServiceDirectoryConfig2 {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionGithubEnterpriseConfigServiceDirectoryConfig2({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionGithubEnterpriseConfigServiceDirectoryConfig2.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfigServiceDirectoryConfig2(
      service: map['service'] as String,
    );
  }
}
