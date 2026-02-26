// ignore_for_file: unused_element, unnecessary_cast

/// Represents the scaling configuration of a metastore service.
class ScalingConfigResponse3 {
  /// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  final String instanceSize;

  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double scalingFactor;

  ScalingConfigResponse3({
    required this.instanceSize,
    required this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSize'] = instanceSize;
    map['scalingFactor'] = scalingFactor;
    return map;
  }

  factory ScalingConfigResponse3.fromMap(Map<String, dynamic> map) {
    return ScalingConfigResponse3(
      instanceSize: map['instanceSize'] as String,
      scalingFactor: map['scalingFactor'] as double,
    );
  }
}
