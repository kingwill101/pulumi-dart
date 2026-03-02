// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GameServerGroupInstanceDefinition {
  /// An EC2 instance type.
  final pulumi.Input<String> instanceType;
  /// Instance weighting that indicates how much this instance type contributes
  /// to the total capacity of a game server group.
  /// Instance weights are used by GameLift FleetIQ to calculate the instance type's cost per unit hour and better identify
  /// the most cost-effective options.
  final pulumi.Input<String>? weightedCapacity;

  /// Creates a new [GameServerGroupInstanceDefinition].
  /// [instanceType] An EC2 instance type.
  /// [weightedCapacity] Instance weighting that indicates how much this instance type contributes
  GameServerGroupInstanceDefinition({
    required this.instanceType,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory GameServerGroupInstanceDefinition.fromMap(Map<String, dynamic> map) {
    return GameServerGroupInstanceDefinition(
      instanceType: (map['instanceType'] as String).input(),
      weightedCapacity: map['weightedCapacity'] == null ? null : ((map['weightedCapacity'] as String).input()).input(),
    );
  }
}

