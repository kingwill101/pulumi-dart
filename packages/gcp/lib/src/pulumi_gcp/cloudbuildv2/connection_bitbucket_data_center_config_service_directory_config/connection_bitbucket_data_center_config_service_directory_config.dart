// ignore_for_file: unused_element, unnecessary_cast

class ConnectionBitbucketDataCenterConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionBitbucketDataCenterConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}
