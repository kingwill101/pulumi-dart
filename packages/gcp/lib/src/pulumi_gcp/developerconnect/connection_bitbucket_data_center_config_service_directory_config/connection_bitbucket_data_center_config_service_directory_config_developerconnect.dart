// ignore_for_file: unused_element, unnecessary_cast

class ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigServiceDirectoryConfigDeveloperconnect(
      service: map['service'] as String,
    );
  }
}
