// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_instance_type_config.dart';
import 'instance_fleet_launch_specifications.dart';

/// Input properties used for looking up and filtering InstanceFleet resources.
class InstanceFleetState {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// Configuration block for instance fleet
  final pulumi.Input<List<InstanceFleetInstanceTypeConfig>>? instanceTypeConfigs;
  /// Configuration block for launch specification
  final pulumi.Input<InstanceFleetLaunchSpecifications>? launchSpecifications;
  /// Friendly name given to the instance fleet.
  final pulumi.Input<String>? name;
  /// The number of On-Demand units that have been provisioned for the instance
  /// fleet to fulfill TargetOnDemandCapacity. This provisioned capacity might be less than or greater than TargetOnDemandCapacity.
  final pulumi.Input<int>? provisionedOnDemandCapacity;
  /// The number of Spot units that have been provisioned for this instance fleet
  /// to fulfill TargetSpotCapacity. This provisioned capacity might be less than or greater than TargetSpotCapacity.
  final pulumi.Input<int>? provisionedSpotCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int>? targetOnDemandCapacity;
  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int>? targetSpotCapacity;

  /// Creates a new [InstanceFleetState].
  /// [clusterId] ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  /// [instanceTypeConfigs] Configuration block for instance fleet
  /// [launchSpecifications] Configuration block for launch specification
  /// [name] Friendly name given to the instance fleet.
  /// [provisionedOnDemandCapacity] The number of On-Demand units that have been provisioned for the instance
  /// [provisionedSpotCapacity] The number of Spot units that have been provisioned for this instance fleet
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetOnDemandCapacity] The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  /// [targetSpotCapacity] The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  InstanceFleetState({
    this.clusterId,
    this.instanceTypeConfigs,
    this.launchSpecifications,
    this.name,
    this.provisionedOnDemandCapacity,
    this.provisionedSpotCapacity,
    this.region,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'instanceTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetInstanceTypeConfig>, List<Map<String, dynamic>>>(instanceTypeConfigs, (value) => pulumi.Input.encodeList<InstanceFleetInstanceTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchSpecifications': ?pulumi.Input.mapOptionalInputValue<InstanceFleetLaunchSpecifications, Map<String, dynamic>>(launchSpecifications, (value) => value.toMap()),
      'name': ?name,
      'provisionedOnDemandCapacity': ?provisionedOnDemandCapacity,
      'provisionedSpotCapacity': ?provisionedSpotCapacity,
      'region': ?region,
      'targetOnDemandCapacity': ?targetOnDemandCapacity,
      'targetSpotCapacity': ?targetSpotCapacity,
    };
  }

  factory InstanceFleetState.fromMap(Map<String, dynamic> map) {
    return InstanceFleetState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      instanceTypeConfigs: map['instanceTypeConfigs'] == null ? null : (pulumi.Input.decodeList<InstanceFleetInstanceTypeConfig>(map['instanceTypeConfigs'], (value) => InstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      launchSpecifications: map['launchSpecifications'] == null ? null : (InstanceFleetLaunchSpecifications.fromMap((map['launchSpecifications'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisionedOnDemandCapacity: map['provisionedOnDemandCapacity'] == null ? null : (map['provisionedOnDemandCapacity'] as int).input(),
      provisionedSpotCapacity: map['provisionedSpotCapacity'] == null ? null : (map['provisionedSpotCapacity'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetOnDemandCapacity: map['targetOnDemandCapacity'] == null ? null : (map['targetOnDemandCapacity'] as int).input(),
      targetSpotCapacity: map['targetSpotCapacity'] == null ? null : (map['targetSpotCapacity'] as int).input(),
    );
  }
}

