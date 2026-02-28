// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option_override_autoscaling_limit.dart';

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride {
  /// A nested object resource.
  final List<
          GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>
      autoscalingLimits;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride].
  /// [autoscalingLimits] A nested object resource.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride({
    required this.autoscalingLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingLimits'] = pulumi.Input.encodeList<
        GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit,
        Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap());
    return map;
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride(
      autoscalingLimits: pulumi.Input.decodeList<
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit>(
          map['autoscalingLimits'],
          (value) =>
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
