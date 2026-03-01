// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_defaults_node_config_defaults.dart';

class ClusterNodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  final ClusterNodePoolDefaultsNodeConfigDefaults? nodeConfigDefaults;

  /// Creates a new [ClusterNodePoolDefaults].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  ClusterNodePoolDefaults({this.nodeConfigDefaults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': ?nodeConfigDefaults == null
          ? null
          : nodeConfigDefaults!.toMap(),
    };
  }

  factory ClusterNodePoolDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaults(
      nodeConfigDefaults: map['nodeConfigDefaults'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaults.fromMap(
              (map['nodeConfigDefaults'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
