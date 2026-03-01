// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterAutoRepairConfig {
  /// Whether auto repair is enabled.
  final bool enabled;

  /// Creates a new [VmwareAdminClusterAutoRepairConfig].
  /// [enabled] Whether auto repair is enabled.
  VmwareAdminClusterAutoRepairConfig({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory VmwareAdminClusterAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAutoRepairConfig(enabled: map['enabled'] as bool);
  }
}
