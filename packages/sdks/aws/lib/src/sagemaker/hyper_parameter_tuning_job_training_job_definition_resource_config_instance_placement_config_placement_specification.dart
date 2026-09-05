// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification {
  /// Number of instances in this placement item.
  final pulumi.Input<int> instanceCount;
  /// UltraServer ID.
  final pulumi.Input<String?>? ultraServerId;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification].
  /// [instanceCount] Number of instances in this placement item.
  /// [ultraServerId] UltraServer ID.
  const HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification({
    required this.instanceCount,
    this.ultraServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'ultraServerId': ?ultraServerId,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionResourceConfigInstancePlacementConfigPlacementSpecification(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      ultraServerId: (() { final guardedValue = map['ultraServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
