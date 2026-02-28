// ignore_for_file: unused_element, unnecessary_cast

/// Options for manually scaling a model.
class GoogleCloudMlV1ManualScaling {
  /// The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  final int? nodes;

  /// Creates a new [GoogleCloudMlV1ManualScaling].
  /// [nodes] The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  GoogleCloudMlV1ManualScaling({
    this.nodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodesValue = nodes;
    if (nodesValue != null) {
      map['nodes'] = nodesValue;
    }
    return map;
  }

  factory GoogleCloudMlV1ManualScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ManualScaling(
      nodes: map['nodes'] == null ? null : map['nodes'] as int,
    );
  }
}
