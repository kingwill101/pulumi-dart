// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureStoreOnlineServingConfigScaling {
  /// The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  final int maxNodeCount;

  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final int minNodeCount;

  /// Creates a new [AiFeatureStoreOnlineServingConfigScaling].
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  AiFeatureStoreOnlineServingConfigScaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    return map;
  }

  factory AiFeatureStoreOnlineServingConfigScaling.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureStoreOnlineServingConfigScaling(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
