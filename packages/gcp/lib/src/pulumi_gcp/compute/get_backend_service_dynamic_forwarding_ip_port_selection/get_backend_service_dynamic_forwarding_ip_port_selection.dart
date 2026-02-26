// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool enabled;

  GetBackendServiceDynamicForwardingIpPortSelection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetBackendServiceDynamicForwardingIpPortSelection.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] as bool,
    );
  }
}
