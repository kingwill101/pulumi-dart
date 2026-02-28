// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default.dart';

class GetClusterNodePoolDefault {
  /// Subset of NodeConfig message that has defaults.
  final List<GetClusterNodePoolDefaultNodeConfigDefault> nodeConfigDefaults;

  /// Creates a new [GetClusterNodePoolDefault].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  GetClusterNodePoolDefault({
    required this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeConfigDefaults'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefault,
        Map<String, dynamic>>(nodeConfigDefaults, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolDefault.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefault(
      nodeConfigDefaults:
          pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefault>(
              map['nodeConfigDefaults'],
              (value) => GetClusterNodePoolDefaultNodeConfigDefault.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
