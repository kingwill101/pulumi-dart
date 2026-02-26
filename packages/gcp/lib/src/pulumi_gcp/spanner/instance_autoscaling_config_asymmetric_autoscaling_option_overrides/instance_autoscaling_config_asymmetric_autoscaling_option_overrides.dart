// ignore_for_file: unused_element, unnecessary_cast

import '../instance_autoscaling_config_asymmetric_autoscaling_option_overrides_autoscaling_limits/instance_autoscaling_config_asymmetric_autoscaling_option_overrides_autoscaling_limits.dart';

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides {
  /// A nested object resource.
  /// Structure is documented below.
  final InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits
      autoscalingLimits;

  InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides({
    required this.autoscalingLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = autoscalingLimits.toMap();
    return map;
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides(
      autoscalingLimits:
          InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits
              .fromMap(
                  (map['autoscalingLimits'] as Map).cast<String, dynamic>()),
    );
  }
}
