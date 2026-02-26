// ignore_for_file: unused_element, unnecessary_cast

/// Specifies config to enable/disable auto repair. The cluster-health-controller is deployed only if Enabled is true.
class VmwareAutoRepairConfigResponse {
  /// Whether auto repair is enabled.
  final bool enabled;

  VmwareAutoRepairConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VmwareAutoRepairConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareAutoRepairConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
