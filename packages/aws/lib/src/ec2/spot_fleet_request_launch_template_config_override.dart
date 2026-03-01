// ignore_for_file: unused_element, unnecessary_cast

import 'spot_fleet_request_launch_template_config_override_instance_requirements.dart';

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

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverride].
  /// [availabilityZone] The availability zone in which to place the request.
  /// [instanceRequirements] The instance requirements. See below.
  /// [instanceType] The type of instance to request.
  /// [priority] The priority for the launch template override. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority.
  /// [spotPrice] The maximum spot bid for this override request.
  /// [subnetId] The subnet in which to launch the requested instance.
  /// [weightedCapacity] The capacity added to the fleet by a fulfilled request.
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
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'instanceRequirements': ?instanceRequirements == null
          ? null
          : instanceRequirements!.toMap(),
      'instanceType': ?instanceType,
      'priority': ?priority,
      'spotPrice': ?spotPrice,
      'subnetId': ?subnetId,
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigOverride(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirements.fromMap(
              (map['instanceRequirements'] as Map).cast<String, dynamic>(),
            ),
      instanceType: map['instanceType'] == null
          ? null
          : map['instanceType'] as String,
      priority: map['priority'] == null ? null : map['priority'] as double,
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as double,
    );
  }
}
