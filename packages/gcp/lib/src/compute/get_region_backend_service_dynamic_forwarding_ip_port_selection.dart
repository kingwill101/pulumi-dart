// ignore_for_file: unused_element, unnecessary_cast


class GetRegionBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool enabled;

  /// Creates a new [GetRegionBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  GetRegionBackendServiceDynamicForwardingIpPortSelection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetRegionBackendServiceDynamicForwardingIpPortSelection.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] as bool,
    );
  }
}

