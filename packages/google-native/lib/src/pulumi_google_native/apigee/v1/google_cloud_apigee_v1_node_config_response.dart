// ignore_for_file: unused_element, unnecessary_cast

/// NodeConfig for setting the min/max number of nodes associated with the environment.
class GoogleCloudApigeeV1NodeConfigResponse {
  /// The current total number of gateway nodes that each environment currently has across all instances.
  final String currentAggregateNodeCount;

  /// Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.
  final String maxNodeCount;

  /// Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.
  final String minNodeCount;

  GoogleCloudApigeeV1NodeConfigResponse({
    required this.currentAggregateNodeCount,
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentAggregateNodeCount'] = currentAggregateNodeCount;
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    return map;
  }

  factory GoogleCloudApigeeV1NodeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1NodeConfigResponse(
      currentAggregateNodeCount: map['currentAggregateNodeCount'] as String,
      maxNodeCount: map['maxNodeCount'] as String,
      minNodeCount: map['minNodeCount'] as String,
    );
  }
}
