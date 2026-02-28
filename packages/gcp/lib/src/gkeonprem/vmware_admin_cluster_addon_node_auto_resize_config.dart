// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterAddonNodeAutoResizeConfig {
  /// Whether to enable controle plane node auto resizing.
  final bool enabled;

  /// Creates a new [VmwareAdminClusterAddonNodeAutoResizeConfig].
  /// [enabled] Whether to enable controle plane node auto resizing.
  VmwareAdminClusterAddonNodeAutoResizeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAdminClusterAddonNodeAutoResizeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAddonNodeAutoResizeConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

