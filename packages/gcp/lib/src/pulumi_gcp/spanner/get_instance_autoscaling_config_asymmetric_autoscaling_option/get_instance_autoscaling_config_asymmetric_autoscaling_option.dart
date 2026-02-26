// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_autoscaling_config_asymmetric_autoscaling_option_override/get_instance_autoscaling_config_asymmetric_autoscaling_option_override.dart';
import '../get_instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection/get_instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection.dart';

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOption {
  /// A nested object resource.
  final List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride>
      overrides;

  /// A nested object resource.
  final List<
          GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection>
      replicaSelections;

  GetInstanceAutoscalingConfigAsymmetricAutoscalingOption({
    required this.overrides,
    required this.replicaSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['overrides'] = Input.encodeList<
        GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride,
        Map<String, dynamic>>(overrides, (value) => value.toMap());
    map['replicaSelections'] = Input.encodeList<
        GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection,
        Map<String, dynamic>>(replicaSelections, (value) => value.toMap());
    return map;
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOption(
      overrides: Input.decodeList<
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride>(
          map['overrides'],
          (value) =>
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride
                  .fromMap((value as Map).cast<String, dynamic>())),
      replicaSelections: Input.decodeList<
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection>(
          map['replicaSelections'],
          (value) =>
              GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
