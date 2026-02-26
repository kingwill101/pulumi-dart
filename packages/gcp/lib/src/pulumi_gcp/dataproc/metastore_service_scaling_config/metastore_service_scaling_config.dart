// ignore_for_file: unused_element, unnecessary_cast

import '../metastore_service_scaling_config_autoscaling_config/metastore_service_scaling_config_autoscaling_config.dart';

class MetastoreServiceScalingConfig {
  /// Represents the autoscaling configuration of a metastore service.
  /// Structure is documented below.
  final MetastoreServiceScalingConfigAutoscalingConfig? autoscalingConfig;

  /// Metastore instance sizes.
  /// Possible values are: `EXTRA_SMALL`, `SMALL`, `MEDIUM`, `LARGE`, `EXTRA_LARGE`.
  final String? instanceSize;

  /// Scaling factor, in increments of 0.1 for values less than 1.0, and increments of 1.0 for values greater than 1.0.
  final double? scalingFactor;

  MetastoreServiceScalingConfig({
    this.autoscalingConfig,
    this.instanceSize,
    this.scalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = autoscalingConfigValue.toMap();
    }
    final instanceSizeValue = instanceSize;
    if (instanceSizeValue != null) {
      map['instanceSize'] = instanceSizeValue;
    }
    final scalingFactorValue = scalingFactor;
    if (scalingFactorValue != null) {
      map['scalingFactor'] = scalingFactorValue;
    }
    return map;
  }

  factory MetastoreServiceScalingConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceScalingConfig(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : MetastoreServiceScalingConfigAutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      instanceSize:
          map['instanceSize'] == null ? null : map['instanceSize'] as String,
      scalingFactor:
          map['scalingFactor'] == null ? null : map['scalingFactor'] as double,
    );
  }
}
