// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetTargetCapacitySpecification {
  /// Default target capacity type. Valid values: `on-demand`, `spot`.
  final pulumi.Input<String> defaultTargetCapacityType;
  /// The number of On-Demand units to request.
  final pulumi.Input<int?>? onDemandTargetCapacity;
  /// The number of Spot units to request.
  final pulumi.Input<int?>? spotTargetCapacity;
  /// The unit for the target capacity.
  /// If you specify `targetCapacityUnitType`, `instanceRequirements` must be specified.
  final pulumi.Input<String?>? targetCapacityUnitType;
  /// The number of units to request, filled using `defaultTargetCapacityType`.
  final pulumi.Input<int> totalTargetCapacity;

  /// Creates a new [FleetTargetCapacitySpecification].
  /// [defaultTargetCapacityType] Default target capacity type. Valid values: `on-demand`, `spot`.
  /// [onDemandTargetCapacity] The number of On-Demand units to request.
  /// [spotTargetCapacity] The number of Spot units to request.
  /// [targetCapacityUnitType] The unit for the target capacity.
  /// [totalTargetCapacity] The number of units to request, filled using `defaultTargetCapacityType`.
  const FleetTargetCapacitySpecification({
    required this.defaultTargetCapacityType,
    this.onDemandTargetCapacity,
    this.spotTargetCapacity,
    this.targetCapacityUnitType,
    required this.totalTargetCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTargetCapacityType': defaultTargetCapacityType,
      'onDemandTargetCapacity': ?onDemandTargetCapacity,
      'spotTargetCapacity': ?spotTargetCapacity,
      'targetCapacityUnitType': ?targetCapacityUnitType,
      'totalTargetCapacity': totalTargetCapacity,
    };
  }

  factory FleetTargetCapacitySpecification.fromMap(Map<String, dynamic> map) {
    return FleetTargetCapacitySpecification(
      defaultTargetCapacityType: pulumi.Input.fromValue(map['defaultTargetCapacityType'] as String),
      onDemandTargetCapacity: (() { final guardedValue = map['onDemandTargetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      spotTargetCapacity: (() { final guardedValue = map['spotTargetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetCapacityUnitType: (() { final guardedValue = map['targetCapacityUnitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalTargetCapacity: pulumi.Input.fromValue((map['totalTargetCapacity'] as num).toInt()),
    );
  }
}
