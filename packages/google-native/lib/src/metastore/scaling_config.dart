// ignore_for_file: unused_element, unnecessary_cast

import 'scaling_config_instance_size.dart';

/// Represents the scaling configuration of a metastore service.
class ScalingConfig {
  /// An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  final ScalingConfigInstanceSize? instanceSize;
  /// Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double? scalingFactor;

  /// Creates a new [ScalingConfig].
  /// [instanceSize] An enum of readable instance sizes, with each instance size mapping to a float value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
  /// [scalingFactor] Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  ScalingConfig({
    this.instanceSize,
    this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSize': ?instanceSize == null ? null : instanceSize!.value,
      'scalingFactor': ?scalingFactor,
    };
  }

  factory ScalingConfig.fromMap(Map<String, dynamic> map) {
    return ScalingConfig(
      instanceSize: map['instanceSize'] == null ? null : ScalingConfigInstanceSize.fromValue(map['instanceSize'] as String),
      scalingFactor: map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
    );
  }
}

