// ignore_for_file: unused_element, unnecessary_cast


class FleetTargetCapacitySpecification {
  /// Default target capacity type. Valid values: `on-demand`, `spot`.
  final String defaultTargetCapacityType;
  /// The number of On-Demand units to request.
  final int? onDemandTargetCapacity;
  /// The number of Spot units to request.
  final int? spotTargetCapacity;
  /// The unit for the target capacity.
  /// If you specify `target_capacity_unit_type`, `instance_requirements` must be specified.
  final String? targetCapacityUnitType;
  /// The number of units to request, filled using `default_target_capacity_type`.
  final int totalTargetCapacity;

  /// Creates a new [FleetTargetCapacitySpecification].
  /// [defaultTargetCapacityType] Default target capacity type. Valid values: `on-demand`, `spot`.
  /// [onDemandTargetCapacity] The number of On-Demand units to request.
  /// [spotTargetCapacity] The number of Spot units to request.
  /// [targetCapacityUnitType] The unit for the target capacity.
  /// [totalTargetCapacity] The number of units to request, filled using `default_target_capacity_type`.
  FleetTargetCapacitySpecification({
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
      defaultTargetCapacityType: map['defaultTargetCapacityType'] as String,
      onDemandTargetCapacity: map['onDemandTargetCapacity'] == null ? null : map['onDemandTargetCapacity'] as int,
      spotTargetCapacity: map['spotTargetCapacity'] == null ? null : map['spotTargetCapacity'] as int,
      targetCapacityUnitType: map['targetCapacityUnitType'] == null ? null : map['targetCapacityUnitType'] as String,
      totalTargetCapacity: map['totalTargetCapacity'] as int,
    );
  }
}

