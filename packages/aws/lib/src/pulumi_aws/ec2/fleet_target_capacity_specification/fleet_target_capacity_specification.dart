// ignore_for_file: unused_element, unnecessary_cast

class FleetTargetCapacitySpecification {
  /// Default target capacity type. Valid values: `on-demand`, <span pulumi-lang-nodejs="`spot`" pulumi-lang-dotnet="`Spot`" pulumi-lang-go="`spot`" pulumi-lang-python="`spot`" pulumi-lang-yaml="`spot`" pulumi-lang-java="`spot`">`spot`</span>.
  final String defaultTargetCapacityType;

  /// The number of On-Demand units to request.
  final int? onDemandTargetCapacity;

  /// The number of Spot units to request.
  final int? spotTargetCapacity;

  /// The unit for the target capacity.
  /// If you specify <span pulumi-lang-nodejs="`targetCapacityUnitType`" pulumi-lang-dotnet="`TargetCapacityUnitType`" pulumi-lang-go="`targetCapacityUnitType`" pulumi-lang-python="`target_capacity_unit_type`" pulumi-lang-yaml="`targetCapacityUnitType`" pulumi-lang-java="`targetCapacityUnitType`">`target_capacity_unit_type`</span>, <span pulumi-lang-nodejs="`instanceRequirements`" pulumi-lang-dotnet="`InstanceRequirements`" pulumi-lang-go="`instanceRequirements`" pulumi-lang-python="`instance_requirements`" pulumi-lang-yaml="`instanceRequirements`" pulumi-lang-java="`instanceRequirements`">`instance_requirements`</span> must be specified.
  final String? targetCapacityUnitType;

  /// The number of units to request, filled using <span pulumi-lang-nodejs="`defaultTargetCapacityType`" pulumi-lang-dotnet="`DefaultTargetCapacityType`" pulumi-lang-go="`defaultTargetCapacityType`" pulumi-lang-python="`default_target_capacity_type`" pulumi-lang-yaml="`defaultTargetCapacityType`" pulumi-lang-java="`defaultTargetCapacityType`">`default_target_capacity_type`</span>.
  final int totalTargetCapacity;

  FleetTargetCapacitySpecification({
    required this.defaultTargetCapacityType,
    this.onDemandTargetCapacity,
    this.spotTargetCapacity,
    this.targetCapacityUnitType,
    required this.totalTargetCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultTargetCapacityType'] = defaultTargetCapacityType;
    final onDemandTargetCapacityValue = onDemandTargetCapacity;
    if (onDemandTargetCapacityValue != null) {
      map['onDemandTargetCapacity'] = onDemandTargetCapacityValue;
    }
    final spotTargetCapacityValue = spotTargetCapacity;
    if (spotTargetCapacityValue != null) {
      map['spotTargetCapacity'] = spotTargetCapacityValue;
    }
    final targetCapacityUnitTypeValue = targetCapacityUnitType;
    if (targetCapacityUnitTypeValue != null) {
      map['targetCapacityUnitType'] = targetCapacityUnitTypeValue;
    }
    map['totalTargetCapacity'] = totalTargetCapacity;
    return map;
  }

  factory FleetTargetCapacitySpecification.fromMap(Map<String, dynamic> map) {
    return FleetTargetCapacitySpecification(
      defaultTargetCapacityType: map['defaultTargetCapacityType'] as String,
      onDemandTargetCapacity: map['onDemandTargetCapacity'] == null
          ? null
          : map['onDemandTargetCapacity'] as int,
      spotTargetCapacity: map['spotTargetCapacity'] == null
          ? null
          : map['spotTargetCapacity'] as int,
      targetCapacityUnitType: map['targetCapacityUnitType'] == null
          ? null
          : map['targetCapacityUnitType'] as String,
      totalTargetCapacity: map['totalTargetCapacity'] as int,
    );
  }
}
