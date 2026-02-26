// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceDynamicForwardingIpPortSelection {
  /// A boolean flag enabling IP:PORT based dynamic forwarding.
  final bool? enabled;

  BackendServiceDynamicForwardingIpPortSelection({
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

  factory BackendServiceDynamicForwardingIpPortSelection.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceDynamicForwardingIpPortSelection(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
