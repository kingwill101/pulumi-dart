// ignore_for_file: unused_element, unnecessary_cast


class ClusterClusterAutoscalingResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final int maximum;
  /// Minimum amount of the resource in the cluster.
  final int? minimum;
  /// The type of the resource. For example, `cpu` and
  /// `memory`.  See the [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for a list of types.
  final String resourceType;

  /// Creates a new [ClusterClusterAutoscalingResourceLimit].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] The type of the resource. For example, `cpu` and
  ClusterClusterAutoscalingResourceLimit({
    required this.maximum,
    this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': ?minimum,
      'resourceType': resourceType,
    };
  }

  factory ClusterClusterAutoscalingResourceLimit.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscalingResourceLimit(
      maximum: map['maximum'] as int,
      minimum: map['minimum'] == null ? null : map['minimum'] as int,
      resourceType: map['resourceType'] as String,
    );
  }
}

