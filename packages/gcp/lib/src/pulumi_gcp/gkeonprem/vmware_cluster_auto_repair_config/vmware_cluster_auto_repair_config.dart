// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterAutoRepairConfig {
  /// Whether auto repair is enabled.
  final bool enabled;

  VMwareClusterAutoRepairConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VMwareClusterAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAutoRepairConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
