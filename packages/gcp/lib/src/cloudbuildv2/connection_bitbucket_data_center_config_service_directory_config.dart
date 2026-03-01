// ignore_for_file: unused_element, unnecessary_cast


class ConnectionBitbucketDataCenterConfigServiceDirectoryConfig {
  /// Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  /// Creates a new [ConnectionBitbucketDataCenterConfigServiceDirectoryConfig].
  /// [service] Required. The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  ConnectionBitbucketDataCenterConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigServiceDirectoryConfig(
      service: map['service'] as String,
    );
  }
}

