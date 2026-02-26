// ignore_for_file: unused_element, unnecessary_cast

import 'scaling_config_instance_size3.dart';

/// Represents the scaling configuration of a metastore service.
class ScalingConfig3 {
  /// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  final ScalingConfigInstanceSize3? instanceSize;

  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double? scalingFactor;

  ScalingConfig3({
    this.instanceSize,
    this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceSizeValue = instanceSize;
    if (instanceSizeValue != null) {
      map['instanceSize'] = instanceSizeValue.value;
    }
    final scalingFactorValue = scalingFactor;
    if (scalingFactorValue != null) {
      map['scalingFactor'] = scalingFactorValue;
    }
    return map;
  }

  factory ScalingConfig3.fromMap(Map<String, dynamic> map) {
    return ScalingConfig3(
      instanceSize: map['instanceSize'] == null
          ? null
          : ScalingConfigInstanceSize3.fromValue(map['instanceSize'] as String),
      scalingFactor:
          map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
    );
  }
}
