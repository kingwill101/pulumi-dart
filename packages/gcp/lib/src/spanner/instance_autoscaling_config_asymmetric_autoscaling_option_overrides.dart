// ignore_for_file: unused_element, unnecessary_cast

import 'instance_autoscaling_config_asymmetric_autoscaling_option_overrides_autoscaling_limits.dart';

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides {
  /// A nested object resource.
  /// Structure is documented below.
  final InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits
  autoscalingLimits;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides].
  /// [autoscalingLimits] A nested object resource.
  InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides({
    required this.autoscalingLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'autoscalingLimits': autoscalingLimits.toMap()};
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides(
      autoscalingLimits:
          InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits.fromMap(
            (map['autoscalingLimits'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
