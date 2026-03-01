// ignore_for_file: unused_element, unnecessary_cast

/// Node configuration for the connection.
class NodeConfigResponse {
  /// Maximum number of nodes in the runtime nodes.
  final int maxNodeCount;

  /// Minimum number of nodes in the runtime nodes.
  final int minNodeCount;

  /// Creates a new [NodeConfigResponse].
  /// [maxNodeCount] Maximum number of nodes in the runtime nodes.
  /// [minNodeCount] Minimum number of nodes in the runtime nodes.
  NodeConfigResponse({required this.maxNodeCount, required this.minNodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory NodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
