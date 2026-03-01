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

  /// Creates a new [EnvironmentNodeConfig].
  /// [currentAggregateNodeCount] (Output)
  /// [maxNodeCount] The maximum total number of gateway nodes that the is reserved for all instances that
  /// [minNodeCount] The minimum total number of gateway nodes that the is reserved for all instances that
  EnvironmentNodeConfig({
    this.currentAggregateNodeCount,
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAggregateNodeCount': ?currentAggregateNodeCount,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory EnvironmentNodeConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentNodeConfig(
      currentAggregateNodeCount: map['currentAggregateNodeCount'] == null ? null : map['currentAggregateNodeCount'] as String,
      maxNodeCount: map['maxNodeCount'] == null ? null : map['maxNodeCount'] as String,
      minNodeCount: map['minNodeCount'] == null ? null : map['minNodeCount'] as String,
    );
  }
}

