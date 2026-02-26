// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_pool_defaults_node_config_defaults/cluster_node_pool_defaults_node_config_defaults.dart';

class ClusterNodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  final ClusterNodePoolDefaultsNodeConfigDefaults? nodeConfigDefaults;

  ClusterNodePoolDefaults({
    this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeConfigDefaultsValue = nodeConfigDefaults;
    if (nodeConfigDefaultsValue != null) {
      map['nodeConfigDefaults'] = nodeConfigDefaultsValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaults(
      nodeConfigDefaults: map['nodeConfigDefaults'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaults.fromMap(
              (map['nodeConfigDefaults'] as Map).cast<String, dynamic>()),
    );
  }
}
