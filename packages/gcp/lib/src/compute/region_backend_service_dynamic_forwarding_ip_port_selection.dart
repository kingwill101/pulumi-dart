// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool? enabled;

  /// Creates a new [RegionBackendServiceDynamicForwardingIpPortSelection].
  /// [enabled] A boolean flag enabling IP:PORT based dynamic forwarding.
  RegionBackendServiceDynamicForwardingIpPortSelection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory RegionBackendServiceDynamicForwardingIpPortSelection.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
