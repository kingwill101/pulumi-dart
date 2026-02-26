// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterAutoscalingResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final int maximum;

  /// Minimum amount of the resource in the cluster.
  final int minimum;

  /// The type of the resource. For example, cpu and memory. See the guide to using Node Auto-Provisioning for a list of types.
  final String resourceType;

  GetClusterClusterAutoscalingResourceLimit({
    required this.maximum,
    required this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    map['resourceType'] = resourceType;
    return map;
  }

  factory GetClusterClusterAutoscalingResourceLimit.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingResourceLimit(
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
      resourceType: map['resourceType'] as String,
    );
  }
}
