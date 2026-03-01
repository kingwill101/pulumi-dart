// ignore_for_file: unused_element, unnecessary_cast


class GetDdosCooDomainResourcesResourceProxyType {
  /// The forwarding port.
  final List<int> proxyPorts;
  /// Protocol type.
  final String proxyType;

  /// Creates a new [GetDdosCooDomainResourcesResourceProxyType].
  /// [proxyPorts] The forwarding port.
  /// [proxyType] Protocol type.
  GetDdosCooDomainResourcesResourceProxyType({
    required this.proxyPorts,
    required this.proxyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proxyPorts': proxyPorts,
      'proxyType': proxyType,
    };
  }

  factory GetDdosCooDomainResourcesResourceProxyType.fromMap(Map<String, dynamic> map) {
    return GetDdosCooDomainResourcesResourceProxyType(
      proxyPorts: (map['proxyPorts'] as List).cast<int>(),
      proxyType: map['proxyType'] as String,
    );
  }
}

