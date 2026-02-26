// ignore_for_file: unused_element, unnecessary_cast

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimitResponse {
  /// Maximum amount of the resource in the cluster.
  final String maximum;

  /// Minimum amount of the resource in the cluster.
  final String minimum;

  /// Resource name "cpu", "memory" or gpu-specific string.
  final String resourceType;

  ResourceLimitResponse({
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

  factory ResourceLimitResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitResponse(
      maximum: map['maximum'] as String,
      minimum: map['minimum'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
