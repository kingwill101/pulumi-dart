// ignore_for_file: unused_element, unnecessary_cast

class ConnectionNodeConfig {
  /// Minimum number of nodes in the runtime nodes.
  final int? maxNodeCount;

  /// Minimum number of nodes in the runtime nodes.
  final int? minNodeCount;

  /// Creates a new [ConnectionNodeConfig].
  /// [maxNodeCount] Minimum number of nodes in the runtime nodes.
  /// [minNodeCount] Minimum number of nodes in the runtime nodes.
  ConnectionNodeConfig({
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

  factory ConnectionNodeConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionNodeConfig(
      maxNodeCount:
          map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount:
          map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
    );
  }
}
