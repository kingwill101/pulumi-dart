// ignore_for_file: unused_element, unnecessary_cast

/// Specifies config to enable/disable auto repair. The cluster-health-controller is deployed only if Enabled is true.
class VmwareAutoRepairConfig {
  /// Whether auto repair is enabled.
  final bool? enabled;

  VmwareAutoRepairConfig({
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

  factory VmwareAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAutoRepairConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
