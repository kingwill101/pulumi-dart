// ignore_for_file: unused_element, unnecessary_cast

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimitResponse {
  /// Maximum amount of the resource in the cluster.
  final String maximum;

  /// Minimum amount of the resource in the cluster.
  final String minimum;

  /// Resource name "cpu", "memory" or gpu-specific string.
  final String resourceType;

  /// Creates a new [ResourceLimitResponse].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] Resource name "cpu", "memory" or gpu-specific string.
  ResourceLimitResponse({
    required this.maximum,
    required this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': minimum,
      'resourceType': resourceType,
    };
  }

  factory ResourceLimitResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitResponse(
      maximum: map['maximum'] as String,
      minimum: map['minimum'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
