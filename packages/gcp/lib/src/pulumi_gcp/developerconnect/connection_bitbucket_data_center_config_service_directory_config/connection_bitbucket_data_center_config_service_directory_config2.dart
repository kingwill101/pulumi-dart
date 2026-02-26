// ignore_for_file: unused_element, unnecessary_cast

class ConnectionBitbucketDataCenterConfigServiceDirectoryConfig2 {
  /// Required. The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final String service;

  ConnectionBitbucketDataCenterConfigServiceDirectoryConfig2({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['service'] = service;
    return map;
  }

  factory ConnectionBitbucketDataCenterConfigServiceDirectoryConfig2.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigServiceDirectoryConfig2(
      service: map['service'] as String,
    );
  }
}
