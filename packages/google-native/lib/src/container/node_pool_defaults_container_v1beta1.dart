// ignore_for_file: unused_element, unnecessary_cast

import 'node_config_defaults_container_v1beta1.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsContainerV1beta1 {
  /// Subset of NodeConfig message that has defaults.
  final NodeConfigDefaultsContainerV1beta1? nodeConfigDefaults;

  /// Creates a new [NodePoolDefaultsContainerV1beta1].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  NodePoolDefaultsContainerV1beta1({this.nodeConfigDefaults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': ?nodeConfigDefaults == null
          ? null
          : nodeConfigDefaults!.toMap(),
    };
  }

  factory NodePoolDefaultsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaultsContainerV1beta1(
      nodeConfigDefaults: map['nodeConfigDefaults'] == null
          ? null
          : NodeConfigDefaultsContainerV1beta1.fromMap(
              (map['nodeConfigDefaults'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
