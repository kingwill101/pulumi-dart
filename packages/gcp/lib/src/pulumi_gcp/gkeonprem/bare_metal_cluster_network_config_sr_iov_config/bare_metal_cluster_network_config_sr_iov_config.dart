// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNetworkConfigSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final bool? enabled;

  BareMetalClusterNetworkConfigSrIovConfig({
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

  factory BareMetalClusterNetworkConfigSrIovConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfigSrIovConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
