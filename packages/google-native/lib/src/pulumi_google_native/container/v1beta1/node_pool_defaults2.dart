// ignore_for_file: unused_element, unnecessary_cast

import 'node_config_defaults2.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaults2 {
  /// Subset of NodeConfig message that has defaults.
  final NodeConfigDefaults2? nodeConfigDefaults;

  NodePoolDefaults2({
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

  factory NodePoolDefaults2.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaults2(
      nodeConfigDefaults: map['nodeConfigDefaults'] == null
          ? null
          : NodeConfigDefaults2.fromMap(
              (map['nodeConfigDefaults'] as Map).cast<String, dynamic>()),
    );
  }
}
