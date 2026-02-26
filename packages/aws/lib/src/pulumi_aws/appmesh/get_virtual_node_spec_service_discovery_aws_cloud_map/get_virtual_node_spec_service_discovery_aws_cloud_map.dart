// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecServiceDiscoveryAwsCloudMap {
  final Map<String, String> attributes;
  final String namespaceName;
  final String serviceName;

  GetVirtualNodeSpecServiceDiscoveryAwsCloudMap({
    required this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes;
    map['namespaceName'] = namespaceName;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscoveryAwsCloudMap(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      namespaceName: map['namespaceName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
