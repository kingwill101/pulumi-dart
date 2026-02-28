// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option_override.dart';
import 'get_instance_autoscaling_config_asymmetric_autoscaling_option_replica_selection.dart';

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOption {
  /// A nested object resource.
  final List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride> overrides;
  /// A nested object resource.
  final List<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection> replicaSelections;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOption].
  /// [overrides] A nested object resource.
  /// [replicaSelections] A nested object resource.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOption({
    required this.overrides,
    required this.replicaSelections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrides': pulumi.Input.encodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'replicaSelections': pulumi.Input.encodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection, Map<String, dynamic>>(replicaSelections, (value) => value.toMap()),
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOption(
      overrides: pulumi.Input.decodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride>(map['overrides'], (value) => GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverride.fromMap((value as Map).cast<String, dynamic>())),
      replicaSelections: pulumi.Input.decodeList<GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection>(map['replicaSelections'], (value) => GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionReplicaSelection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

