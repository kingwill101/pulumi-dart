// ignore_for_file: unused_element, unnecessary_cast

import '../spot_fleet_request_launch_template_config_override_instance_requirements/spot_fleet_request_launch_template_config_override_instance_requirements.dart';

class SpotFleetRequestLaunchTemplateConfigOverride {
  /// The availability zone in which to place the request.
  final String? availabilityZone;

  /// The instance requirements. See below.
  final SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements?
      instanceRequirements;

  /// The type of instance to request.
  final String? instanceType;

  /// The priority for the launch template override. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
  final double? priority;

  /// The maximum spot bid for this override request.
  final String? spotPrice;

  /// The subnet in which to launch the requested instance.
  final String? subnetId;

  /// The capacity added to the fleet by a fulfilled request.
  final double? weightedCapacity;

  SpotFleetRequestLaunchTemplateConfigOverride({
    this.availabilityZone,
    this.instanceRequirements,
    this.instanceType,
    this.priority,
    this.spotPrice,
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
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final spotPriceValue = spotPrice;
    if (spotPriceValue != null) {
      map['spotPrice'] = spotPriceValue;
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

  factory SpotFleetRequestLaunchTemplateConfigOverride.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverride(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements
              .fromMap(
                  (map['instanceRequirements'] as Map).cast<String, dynamic>()),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      priority: map['priority'] == null ? null : map['priority'] as double,
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as double,
    );
  }
}
