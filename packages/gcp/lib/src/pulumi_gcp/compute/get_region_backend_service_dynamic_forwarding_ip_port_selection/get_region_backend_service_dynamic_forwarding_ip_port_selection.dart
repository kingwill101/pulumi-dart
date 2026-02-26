// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool enabled;

  GetRegionBackendServiceDynamicForwardingIpPortSelection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetRegionBackendServiceDynamicForwardingIpPortSelection.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] as bool,
    );
  }
}
