// ignore_for_file: unused_element, unnecessary_cast

import 'node_config_defaults_response_container_v1beta1.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsResponseContainerV1beta1 {
  /// Subset of NodeConfig message that has defaults.
  final NodeConfigDefaultsResponseContainerV1beta1 nodeConfigDefaults;

  /// Creates a new [NodePoolDefaultsResponseContainerV1beta1].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  NodePoolDefaultsResponseContainerV1beta1({required this.nodeConfigDefaults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeConfigDefaults': nodeConfigDefaults.toMap()};
  }

  factory NodePoolDefaultsResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolDefaultsResponseContainerV1beta1(
      nodeConfigDefaults: NodeConfigDefaultsResponseContainerV1beta1.fromMap(
        (map['nodeConfigDefaults'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
