// ignore_for_file: unused_element, unnecessary_cast

import '../fleet_launch_template_config_override_instance_requirements/fleet_launch_template_config_override_instance_requirements.dart';

class FleetLaunchTemplateConfigOverride {
  /// Availability Zone in which to launch the instances.
  final String? availabilityZone;

  /// Override the instance type in the Launch Template with instance types that satisfy the requirements.
  final FleetLaunchTemplateConfigOverrideInstanceRequirements?
      instanceRequirements;

  /// Instance type.
  final String? instanceType;

  /// Maximum price per unit hour that you are willing to pay for a Spot Instance.
  final String? maxPrice;

  /// Priority for the launch template override. If `on_demand_options` `allocation_strategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0.
  final double? priority;

  /// ID of the subnet in which to launch the instances.
  final String? subnetId;

  /// Number of units provided by the specified instance type.
  final double? weightedCapacity;

  FleetLaunchTemplateConfigOverride({
    this.availabilityZone,
    this.instanceRequirements,
    this.instanceType,
    this.maxPrice,
    this.priority,
    this.subnetId,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = instanceRequirementsValue.toMap();
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final maxPriceValue = maxPrice;
    if (maxPriceValue != null) {
      map['maxPrice'] = maxPriceValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory FleetLaunchTemplateConfigOverride.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverride(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap(
              (map['instanceRequirements'] as Map).cast<String, dynamic>()),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      maxPrice: map['maxPrice'] == null ? null : map['maxPrice'] as String,
      priority: map['priority'] == null ? null : map['priority'] as double,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as double,
    );
  }
}
