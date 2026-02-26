// ignore_for_file: unused_element, unnecessary_cast

import 'node_config_defaults_response2.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsResponse2 {
  /// Subset of NodeConfig message that has defaults.
  final NodeConfigDefaultsResponse2 nodeConfigDefaults;

  NodePoolDefaultsResponse2({
    required this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeConfigDefaults'] = nodeConfigDefaults.toMap();
    return map;
  }

  factory NodePoolDefaultsResponse2.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaultsResponse2(
      nodeConfigDefaults: NodeConfigDefaultsResponse2.fromMap(
          (map['nodeConfigDefaults'] as Map).cast<String, dynamic>()),
    );
  }
}
