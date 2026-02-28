// ignore_for_file: unused_element, unnecessary_cast

import 'metastore_service_scaling_config_autoscaling_config_limit_config.dart';

class MetastoreServiceScalingConfigAutoscalingConfig {
  /// Defines whether autoscaling is enabled. The default value is false.
  final bool? autoscalingEnabled;
  /// (Output)
  /// Output only. The scaling factor of a service with autoscaling enabled.
  final double? autoscalingFactor;
  /// Represents the limit configuration of a metastore service.
  /// Structure is documented below.
  final MetastoreServiceScalingConfigAutoscalingConfigLimitConfig? limitConfig;

  /// Creates a new [MetastoreServiceScalingConfigAutoscalingConfig].
  /// [autoscalingEnabled] Defines whether autoscaling is enabled. The default value is false.
  /// [autoscalingFactor] (Output)
  /// [limitConfig] Represents the limit configuration of a metastore service.
  MetastoreServiceScalingConfigAutoscalingConfig({
    this.autoscalingEnabled,
    this.autoscalingFactor,
    this.limitConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingEnabled': ?autoscalingEnabled,
      'autoscalingFactor': ?autoscalingFactor,
      'limitConfig': ?limitConfig == null ? null : limitConfig!.toMap(),
    };
  }

  factory MetastoreServiceScalingConfigAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceScalingConfigAutoscalingConfig(
      autoscalingEnabled: map['autoscalingEnabled'] == null ? null : map['autoscalingEnabled'] as bool,
      autoscalingFactor: map['autoscalingFactor'] == null ? null : map['autoscalingFactor'] as double,
      limitConfig: map['limitConfig'] == null ? null : MetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap((map['limitConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

