// ignore_for_file: unused_element, unnecessary_cast

class GameServerGroupInstanceDefinition {
  /// An EC2 instance type.
  final String instanceType;

  /// Instance weighting that indicates how much this instance type contributes
  /// to the total capacity of a game server group.
  /// Instance weights are used by GameLift FleetIQ to calculate the instance type's cost per unit hour and better identify
  /// the most cost-effective options.
  final String? weightedCapacity;

  GameServerGroupInstanceDefinition({
    required this.instanceType,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceType'] = instanceType;
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory GameServerGroupInstanceDefinition.fromMap(Map<String, dynamic> map) {
    return GameServerGroupInstanceDefinition(
      instanceType: map['instanceType'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as String,
    );
  }
}
