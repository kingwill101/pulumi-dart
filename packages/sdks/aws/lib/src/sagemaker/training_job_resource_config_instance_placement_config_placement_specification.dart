// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification {
  /// Number of instances in the placement.
  final pulumi.Input<int?>? instanceCount;
  /// Ultra server ID for the placement.
  final pulumi.Input<String?>? ultraServerId;

  /// Creates a new [TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification].
  /// [instanceCount] Number of instances in the placement.
  /// [ultraServerId] Ultra server ID for the placement.
  const TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification({
    this.instanceCount,
    this.ultraServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'ultraServerId': ?ultraServerId,
    };
  }

  factory TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification.fromMap(Map<String, dynamic> map) {
    return TrainingJobResourceConfigInstancePlacementConfigPlacementSpecification(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ultraServerId: (() { final guardedValue = map['ultraServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
