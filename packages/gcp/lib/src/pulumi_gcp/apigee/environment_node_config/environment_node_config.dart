// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentNodeConfig {
  /// (Output)
  /// The current total number of gateway nodes that each environment currently has across
  /// all instances.
  final String? currentAggregateNodeCount;

  /// The maximum total number of gateway nodes that the is reserved for all instances that
  /// has the specified environment. If not specified, the default is determined by the
  /// recommended maximum number of nodes for that gateway.
  final String? maxNodeCount;

  /// The minimum total number of gateway nodes that the is reserved for all instances that
  /// has the specified environment. If not specified, the default is determined by the
  /// recommended minimum number of nodes for that gateway.
  final String? minNodeCount;

  EnvironmentNodeConfig({
    this.currentAggregateNodeCount,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentAggregateNodeCountValue = currentAggregateNodeCount;
    if (currentAggregateNodeCountValue != null) {
      map['currentAggregateNodeCount'] = currentAggregateNodeCountValue;
    }
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

  factory EnvironmentNodeConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentNodeConfig(
      currentAggregateNodeCount: map['currentAggregateNodeCount'] == null
          ? null
          : map['currentAggregateNodeCount'] as String,
      maxNodeCount:
          map['maxNodeCount'] == null ? null : map['maxNodeCount'] as String,
      minNodeCount:
          map['minNodeCount'] == null ? null : map['minNodeCount'] as String,
    );
  }
}
