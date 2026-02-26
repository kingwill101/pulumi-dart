// ignore_for_file: unused_element, unnecessary_cast

/// Node configuration for the connection.
class NodeConfig3 {
  /// Maximum number of nodes in the runtime nodes.
  final int? maxNodeCount;

  /// Minimum number of nodes in the runtime nodes.
  final int? minNodeCount;

  NodeConfig3({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxNodeCountValue = maxNodeCount;
    if (maxNodeCountValue != null) {
      map['maxNodeCount'] = maxNodeCountValue;
    }
    final minNodeCountValue = minNodeCount;
    if (minNodeCountValue != null) {
      map['minNodeCount'] = minNodeCountValue;
    }
    return map;
  }

  factory NodeConfig3.fromMap(Map<String, dynamic> map) {
    return NodeConfig3(
      maxNodeCount:
          map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount:
          map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
    );
  }
}
