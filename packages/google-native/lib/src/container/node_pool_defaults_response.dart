// ignore_for_file: unused_element, unnecessary_cast

import 'node_config_defaults_response.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsResponse {
  /// Subset of NodeConfig message that has defaults.
  final NodeConfigDefaultsResponse nodeConfigDefaults;

  /// Creates a new [NodePoolDefaultsResponse].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  NodePoolDefaultsResponse({required this.nodeConfigDefaults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeConfigDefaults': nodeConfigDefaults.toMap()};
  }

  factory NodePoolDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaultsResponse(
      nodeConfigDefaults: NodeConfigDefaultsResponse.fromMap(
        (map['nodeConfigDefaults'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
