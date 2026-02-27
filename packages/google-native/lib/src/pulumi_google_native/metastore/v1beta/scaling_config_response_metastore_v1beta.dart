// ignore_for_file: unused_element, unnecessary_cast

/// Represents the scaling configuration of a metastore service.
class ScalingConfigResponseMetastoreV1beta {
  /// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  final String instanceSize;

  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double scalingFactor;

  ScalingConfigResponseMetastoreV1beta({
    required this.instanceSize,
    required this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSize'] = instanceSize;
    map['scalingFactor'] = scalingFactor;
    return map;
  }

  factory ScalingConfigResponseMetastoreV1beta.fromMap(
      Map<String, dynamic> map) {
    return ScalingConfigResponseMetastoreV1beta(
      instanceSize: map['instanceSize'] as String,
      scalingFactor: map['scalingFactor'] as double,
    );
  }
}
