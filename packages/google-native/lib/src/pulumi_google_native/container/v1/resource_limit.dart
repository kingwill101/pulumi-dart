// ignore_for_file: unused_element, unnecessary_cast

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final String? maximum;

  /// Minimum amount of the resource in the cluster.
  final String? minimum;

  /// Resource name "cpu", "memory" or gpu-specific string.
  final String? resourceType;

  ResourceLimit({
    this.maximum,
    this.minimum,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumValue = maximum;
    if (maximumValue != null) {
      map['maximum'] = maximumValue;
    }
    final minimumValue = minimum;
    if (minimumValue != null) {
      map['minimum'] = minimumValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory ResourceLimit.fromMap(Map<String, dynamic> map) {
    return ResourceLimit(
      maximum: map['maximum'] == null ? null : map['maximum'] as String,
      minimum: map['minimum'] == null ? null : map['minimum'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
