// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_launch_template_config_override_instance_requirements.dart';

class FleetLaunchTemplateConfigOverride {
  /// Availability Zone in which to launch the instances.
  final pulumi.Input<String>? availabilityZone;
  /// Override the instance type in the Launch Template with instance types that satisfy the requirements.
  final pulumi.Input<FleetLaunchTemplateConfigOverrideInstanceRequirements>? instanceRequirements;
  /// Instance type.
  final pulumi.Input<String>? instanceType;
  /// Maximum price per unit hour that you are willing to pay for a Spot Instance.
  final pulumi.Input<String>? maxPrice;
  /// Priority for the launch template override. If `on_demand_options` `allocation_strategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0.
  final pulumi.Input<double>? priority;
  /// ID of the subnet in which to launch the instances.
  final pulumi.Input<String>? subnetId;
  /// Number of units provided by the specified instance type.
  final pulumi.Input<double>? weightedCapacity;

  /// Creates a new [FleetLaunchTemplateConfigOverride].
  /// [availabilityZone] Availability Zone in which to launch the instances.
  /// [instanceRequirements] Override the instance type in the Launch Template with instance types that satisfy the requirements.
  /// [instanceType] Instance type.
  /// [maxPrice] Maximum price per unit hour that you are willing to pay for a Spot Instance.
  /// [priority] Priority for the launch template override. If `on_demand_options` `allocation_strategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0.
  /// [subnetId] ID of the subnet in which to launch the instances.
  /// [weightedCapacity] Number of units provided by the specified instance type.
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
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<FleetLaunchTemplateConfigOverrideInstanceRequirements, Map<String, dynamic>>(instanceRequirements, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'maxPrice': ?maxPrice,
      'priority': ?priority,
      'subnetId': ?subnetId,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory FleetLaunchTemplateConfigOverride.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverride(
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      instanceRequirements: map['instanceRequirements'] == null ? null : ((FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap((map['instanceRequirements']! as Map).cast<String, dynamic>())).input()).input(),
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      maxPrice: map['maxPrice'] == null ? null : ((map['maxPrice'] as String).input()).input(),
      priority: map['priority'] == null ? null : ((map['priority'] as double).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      weightedCapacity: map['weightedCapacity'] == null ? null : ((map['weightedCapacity'] as double).input()).input(),
    );
  }
}

