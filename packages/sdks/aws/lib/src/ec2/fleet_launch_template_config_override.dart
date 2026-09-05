// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_launch_template_config_override_instance_requirements.dart';

class FleetLaunchTemplateConfigOverride {
  /// Availability Zone in which to launch the instances.
  final pulumi.Input<String?>? availabilityZone;
  /// Override the instance type in the Launch Template with instance types that satisfy the requirements.
  final pulumi.Input<FleetLaunchTemplateConfigOverrideInstanceRequirements?>? instanceRequirements;
  /// Instance type.
  final pulumi.Input<String?>? instanceType;
  /// Maximum price per unit hour that you are willing to pay for a Spot Instance.
  final pulumi.Input<String?>? maxPrice;
  /// Priority for the launch template override. If `onDemandOptions` `allocationStrategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0.
  final pulumi.Input<double?>? priority;
  /// ID of the subnet in which to launch the instances.
  final pulumi.Input<String?>? subnetId;
  /// Number of units provided by the specified instance type.
  final pulumi.Input<double?>? weightedCapacity;

  /// Creates a new [FleetLaunchTemplateConfigOverride].
  /// [availabilityZone] Availability Zone in which to launch the instances.
  /// [instanceRequirements] Override the instance type in the Launch Template with instance types that satisfy the requirements.
  /// [instanceType] Instance type.
  /// [maxPrice] Maximum price per unit hour that you are willing to pay for a Spot Instance.
  /// [priority] Priority for the launch template override. If `onDemandOptions` `allocationStrategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0.
  /// [subnetId] ID of the subnet in which to launch the instances.
  /// [weightedCapacity] Number of units provided by the specified instance type.
  const FleetLaunchTemplateConfigOverride({
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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetLaunchTemplateConfigOverrideInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxPrice: (() { final guardedValue = map['maxPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
