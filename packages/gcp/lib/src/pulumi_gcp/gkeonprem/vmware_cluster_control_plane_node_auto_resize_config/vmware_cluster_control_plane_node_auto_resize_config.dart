// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterControlPlaneNodeAutoResizeConfig {
  /// Whether to enable control plane node auto resizing.
  ///
  /// <a name="nested_control_plane_node_vsphere_config"></a>The `vsphere_config` block contains:
  final bool enabled;

  VMwareClusterControlPlaneNodeAutoResizeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VMwareClusterControlPlaneNodeAutoResizeConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeAutoResizeConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
