// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecServiceDiscoveryAwsCloudMap {
  final Map<String, String> attributes;
  final String namespaceName;
  final String serviceName;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryAwsCloudMap].
  /// [attributes] Required.
  /// [namespaceName] Required.
  /// [serviceName] Required.
  GetVirtualNodeSpecServiceDiscoveryAwsCloudMap({
    required this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'namespaceName': namespaceName,
      'serviceName': serviceName,
    };
  }

  factory GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscoveryAwsCloudMap(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      namespaceName: map['namespaceName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

