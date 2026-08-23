// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_template_config_override_instance_requirements.dart';

class SpotFleetRequestLaunchTemplateConfigOverride {
  /// The availability zone in which to place the request.
  final pulumi.Input<String>? availabilityZone;
  /// The instance requirements. See below.
  final pulumi.Input<SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements>? instanceRequirements;
  /// The type of instance to request.
  final pulumi.Input<String>? instanceType;
  /// The priority for the launch template override. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
  final pulumi.Input<double>? priority;
  /// The maximum spot bid for this override request.
  final pulumi.Input<String>? spotPrice;
  /// The subnet in which to launch the requested instance.
  final pulumi.Input<String>? subnetId;
  /// The capacity added to the fleet by a fulfilled request.
  final pulumi.Input<double>? weightedCapacity;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverride].
  /// [availabilityZone] The availability zone in which to place the request.
  /// [instanceRequirements] The instance requirements. See below.
  /// [instanceType] The type of instance to request.
  /// [priority] The priority for the launch template override. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
  /// [spotPrice] The maximum spot bid for this override request.
  /// [subnetId] The subnet in which to launch the requested instance.
  /// [weightedCapacity] The capacity added to the fleet by a fulfilled request.
  const SpotFleetRequestLaunchTemplateConfigOverride({
    this.availabilityZone,
    this.instanceRequirements,
    this.instanceType,
    this.priority,
    this.spotPrice,
    this.subnetId,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements, Map<String, dynamic>>(instanceRequirements, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'priority': ?priority,
      'spotPrice': ?spotPrice,
      'subnetId': ?subnetId,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverride.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverride(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spotPrice: (() { final guardedValue = map['spotPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
