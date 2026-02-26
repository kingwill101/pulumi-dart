// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_fleet_instance_type_config/instance_fleet_instance_type_config.dart';
import '../instance_fleet_launch_specifications/instance_fleet_launch_specifications.dart';

/// The set of arguments for InstanceFleet.
class InstanceFleetArgs {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  final Input<String> clusterId;

  /// Configuration block for instance fleet
  final Input<List<InstanceFleetInstanceTypeConfig>>? instanceTypeConfigs;

  /// Configuration block for launch specification
  final Input<InstanceFleetLaunchSpecifications>? launchSpecifications;

  /// Friendly name given to the instance fleet.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final Input<int>? targetOnDemandCapacity;

  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final Input<int>? targetSpotCapacity;

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
      map['instanceTypeConfigs'] = Input.mapOptionalInputValue<
              List<InstanceFleetInstanceTypeConfig>,
              List<Map<String, dynamic>>>(
          instanceTypeConfigsValue,
          (value) => Input.encodeList<InstanceFleetInstanceTypeConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final launchSpecificationsValue = launchSpecifications;
    if (launchSpecificationsValue != null) {
      map['launchSpecifications'] = Input.mapOptionalInputValue<
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
      clusterId: Input.asInput<String>(map['clusterId']),
      instanceTypeConfigs:
          Input.asOptionalInput<List<InstanceFleetInstanceTypeConfig>>(
              map['instanceTypeConfigs']),
      launchSpecifications:
          Input.asOptionalInput<InstanceFleetLaunchSpecifications>(
              map['launchSpecifications']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      targetOnDemandCapacity:
          Input.asOptionalInput<int>(map['targetOnDemandCapacity']),
      targetSpotCapacity: Input.asOptionalInput<int>(map['targetSpotCapacity']),
    );
  }
}
