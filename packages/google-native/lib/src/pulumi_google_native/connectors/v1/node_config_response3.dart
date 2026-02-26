// ignore_for_file: unused_element, unnecessary_cast

/// Node configuration for the connection.
class NodeConfigResponse3 {
  /// Maximum number of nodes in the runtime nodes.
  final int maxNodeCount;

  /// Minimum number of nodes in the runtime nodes.
  final int minNodeCount;

  NodeConfigResponse3({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    return map;
  }

  factory NodeConfigResponse3.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse3(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
