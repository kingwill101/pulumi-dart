// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_fleet_instance_type_config/instance_fleet_instance_type_config.dart';
import '../instance_fleet_launch_specifications/instance_fleet_launch_specifications.dart';

/// The set of arguments for InstanceFleet.
class InstanceFleetArgs {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterId;

  /// Configuration block for instance fleet
  final pulumi.Input<List<InstanceFleetInstanceTypeConfig>>?
      instanceTypeConfigs;

  /// Configuration block for launch specification
  final pulumi.Input<InstanceFleetLaunchSpecifications>? launchSpecifications;

  /// Friendly name given to the instance fleet.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int>? targetOnDemandCapacity;

  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int>? targetSpotCapacity;

  InstanceFleetArgs({
    required this.clusterId,
    this.instanceTypeConfigs,
    this.launchSpecifications,
    this.name,
    this.region,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final instanceTypeConfigsValue = instanceTypeConfigs;
    if (instanceTypeConfigsValue != null) {
      map['instanceTypeConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceFleetInstanceTypeConfig>,
              List<Map<String, dynamic>>>(
          instanceTypeConfigsValue,
          (value) => pulumi.Input.encodeList<InstanceFleetInstanceTypeConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final launchSpecificationsValue = launchSpecifications;
    if (launchSpecificationsValue != null) {
      map['launchSpecifications'] = pulumi.Input.mapOptionalInputValue<
              InstanceFleetLaunchSpecifications, Map<String, dynamic>>(
          launchSpecificationsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final targetOnDemandCapacityValue = targetOnDemandCapacity;
    if (targetOnDemandCapacityValue != null) {
      map['targetOnDemandCapacity'] = targetOnDemandCapacityValue;
    }
    final targetSpotCapacityValue = targetSpotCapacity;
    if (targetSpotCapacityValue != null) {
      map['targetSpotCapacity'] = targetSpotCapacityValue;
    }
    return map;
  }

  factory InstanceFleetArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFleetArgs(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      instanceTypeConfigs:
          pulumi.Input.asOptionalInput<List<InstanceFleetInstanceTypeConfig>>(
              map['instanceTypeConfigs']),
      launchSpecifications:
          pulumi.Input.asOptionalInput<InstanceFleetLaunchSpecifications>(
              map['launchSpecifications']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetOnDemandCapacity:
          pulumi.Input.asOptionalInput<int>(map['targetOnDemandCapacity']),
      targetSpotCapacity:
          pulumi.Input.asOptionalInput<int>(map['targetSpotCapacity']),
    );
  }
}
