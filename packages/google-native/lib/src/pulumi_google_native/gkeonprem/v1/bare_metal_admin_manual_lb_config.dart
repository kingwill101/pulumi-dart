// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminManualLbConfig represents configuration parameters for a manual load balancer.
class BareMetalAdminManualLbConfig {
  /// Whether manual load balancing is enabled.
  final bool? enabled;

  BareMetalAdminManualLbConfig({
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

  factory BareMetalAdminManualLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminManualLbConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
