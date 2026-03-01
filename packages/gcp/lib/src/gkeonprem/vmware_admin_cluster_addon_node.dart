// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_admin_cluster_addon_node_auto_resize_config.dart';

class VmwareAdminClusterAddonNode {
  /// Specifies auto resize config.
  /// Structure is documented below.
  final VmwareAdminClusterAddonNodeAutoResizeConfig? autoResizeConfig;

  /// Creates a new [VmwareAdminClusterAddonNode].
  /// [autoResizeConfig] Specifies auto resize config.
  VmwareAdminClusterAddonNode({this.autoResizeConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResizeConfig': ?autoResizeConfig == null
          ? null
          : autoResizeConfig!.toMap(),
    };
  }

  factory VmwareAdminClusterAddonNode.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAddonNode(
      autoResizeConfig: map['autoResizeConfig'] == null
          ? null
          : VmwareAdminClusterAddonNodeAutoResizeConfig.fromMap(
              (map['autoResizeConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
