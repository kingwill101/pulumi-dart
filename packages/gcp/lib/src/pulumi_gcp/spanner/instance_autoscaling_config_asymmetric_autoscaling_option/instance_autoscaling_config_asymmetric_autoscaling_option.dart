// ignore_for_file: unused_element, unnecessary_cast

import '../instance_autoscaling_config_asymmetric_autoscaling_option_overrides/instance_autoscaling_config_asymmetric_autoscaling_option_overrides.dart';
import '../instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection/instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection.dart';

class InstanceAutoscalingConfigAsymmetricAutoscalingOption {
  /// A nested object resource.
  /// Structure is documented below.
  final InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides overrides;

  /// A nested object resource.
  /// Structure is documented below.
  final InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection
      replicaSelection;

  InstanceAutoscalingConfigAsymmetricAutoscalingOption({
    required this.overrides,
    required this.replicaSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['overrides'] = overrides.toMap();
    map['replicaSelection'] = replicaSelection.toMap();
    return map;
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOption(
      overrides:
          InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrides.fromMap(
              (map['overrides'] as Map).cast<String, dynamic>()),
      replicaSelection:
          InstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection
              .fromMap(
                  (map['replicaSelection'] as Map).cast<String, dynamic>()),
    );
  }
}
