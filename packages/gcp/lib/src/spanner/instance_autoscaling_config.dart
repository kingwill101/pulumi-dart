// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config_asymmetric_autoscaling_option.dart';
import 'instance_autoscaling_config_autoscaling_limits.dart';
import 'instance_autoscaling_config_autoscaling_targets.dart';

class InstanceAutoscalingConfig {
  /// Asymmetric autoscaling options for specific replicas.
  /// Structure is documented below.
  final List<InstanceAutoscalingConfigAsymmetricAutoscalingOption>?
      asymmetricAutoscalingOptions;

  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events. Users can define the minimum and
  /// maximum compute capacity allocated to the instance, and the autoscaler will
  /// only scale within that range. Users can either use nodes or processing
  /// units to specify the limits, but should use the same unit to set both the
  /// min_limit and max_limit.
  /// Structure is documented below.
  final InstanceAutoscalingConfigAutoscalingLimits? autoscalingLimits;

  /// Defines scale in controls to reduce the risk of response latency
  /// and outages due to abrupt scale-in events
  /// Structure is documented below.
  final InstanceAutoscalingConfigAutoscalingTargets? autoscalingTargets;

  /// Creates a new [InstanceAutoscalingConfig].
  /// [asymmetricAutoscalingOptions] Asymmetric autoscaling options for specific replicas.
  /// [autoscalingLimits] Defines scale in controls to reduce the risk of response latency
  /// [autoscalingTargets] Defines scale in controls to reduce the risk of response latency
  InstanceAutoscalingConfig({
    this.asymmetricAutoscalingOptions,
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asymmetricAutoscalingOptionsValue = asymmetricAutoscalingOptions;
    if (asymmetricAutoscalingOptionsValue != null) {
      map['asymmetricAutoscalingOptions'] = pulumi.Input.encodeList<
              InstanceAutoscalingConfigAsymmetricAutoscalingOption,
              Map<String, dynamic>>(
          asymmetricAutoscalingOptionsValue, (value) => value.toMap());
    }
    final autoscalingLimitsValue = autoscalingLimits;
    if (autoscalingLimitsValue != null) {
      map['autoscalingLimits'] = autoscalingLimitsValue.toMap();
    }
    final autoscalingTargetsValue = autoscalingTargets;
    if (autoscalingTargetsValue != null) {
      map['autoscalingTargets'] = autoscalingTargetsValue.toMap();
    }
    return map;
  }

  factory InstanceAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfig(
      asymmetricAutoscalingOptions: map['asymmetricAutoscalingOptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceAutoscalingConfigAsymmetricAutoscalingOption>(
              map['asymmetricAutoscalingOptions'],
              (value) =>
                  InstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(
                      (value as Map).cast<String, dynamic>())),
      autoscalingLimits: map['autoscalingLimits'] == null
          ? null
          : InstanceAutoscalingConfigAutoscalingLimits.fromMap(
              (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
      autoscalingTargets: map['autoscalingTargets'] == null
          ? null
          : InstanceAutoscalingConfigAutoscalingTargets.fromMap(
              (map['autoscalingTargets'] as Map).cast<String, dynamic>()),
    );
  }
}
