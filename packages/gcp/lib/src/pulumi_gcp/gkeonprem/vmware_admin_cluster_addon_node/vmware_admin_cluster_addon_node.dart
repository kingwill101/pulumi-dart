// ignore_for_file: unused_element, unnecessary_cast

import '../vmware_admin_cluster_addon_node_auto_resize_config/vmware_admin_cluster_addon_node_auto_resize_config.dart';

class VmwareAdminClusterAddonNode {
  /// Specifies auto resize config.
  /// Structure is documented below.
  final VmwareAdminClusterAddonNodeAutoResizeConfig? autoResizeConfig;

  VmwareAdminClusterAddonNode({
    this.autoResizeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoResizeConfigValue = autoResizeConfig;
    if (autoResizeConfigValue != null) {
      map['autoResizeConfig'] = autoResizeConfigValue.toMap();
    }
    return map;
  }

  factory VmwareAdminClusterAddonNode.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAddonNode(
      autoResizeConfig: map['autoResizeConfig'] == null
          ? null
          : VmwareAdminClusterAddonNodeAutoResizeConfig.fromMap(
              (map['autoResizeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
