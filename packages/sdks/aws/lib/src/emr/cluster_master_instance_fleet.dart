// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_instance_type_config.dart';
import 'cluster_master_instance_fleet_launch_specifications.dart';

class ClusterMasterInstanceFleet {
  /// ID of the cluster.
  final pulumi.Input<String>? id;
  /// Configuration block for instance fleet.
  final pulumi.Input<List<ClusterMasterInstanceFleetInstanceTypeConfig>>? instanceTypeConfigs;
  /// Configuration block for launch specification.
  final pulumi.Input<ClusterMasterInstanceFleetLaunchSpecifications>? launchSpecifications;
  /// Friendly name given to the instance fleet.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? provisionedOnDemandCapacity;
  final pulumi.Input<int>? provisionedSpotCapacity;
  /// Target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int>? targetOnDemandCapacity;
  /// Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int>? targetSpotCapacity;

  /// Creates a new [ClusterMasterInstanceFleet].
  /// [id] ID of the cluster.
  /// [instanceTypeConfigs] Configuration block for instance fleet.
  /// [launchSpecifications] Configuration block for launch specification.
  /// [name] Friendly name given to the instance fleet.
  /// [provisionedOnDemandCapacity] Optional.
  /// [provisionedSpotCapacity] Optional.
  /// [targetOnDemandCapacity] Target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  /// [targetSpotCapacity] Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  ClusterMasterInstanceFleet({
    this.id,
    this.instanceTypeConfigs,
    this.launchSpecifications,
    this.name,
    this.provisionedOnDemandCapacity,
    this.provisionedSpotCapacity,
    this.targetOnDemandCapacity,
    this.targetSpotCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'instanceTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterInstanceFleetInstanceTypeConfig>, List<Map<String, dynamic>>>(instanceTypeConfigs, (value) => pulumi.Input.encodeList<ClusterMasterInstanceFleetInstanceTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchSpecifications': ?pulumi.Input.mapOptionalInputValue<ClusterMasterInstanceFleetLaunchSpecifications, Map<String, dynamic>>(launchSpecifications, (value) => value.toMap()),
      'name': ?name,
      'provisionedOnDemandCapacity': ?provisionedOnDemandCapacity,
      'provisionedSpotCapacity': ?provisionedSpotCapacity,
      'targetOnDemandCapacity': ?targetOnDemandCapacity,
      'targetSpotCapacity': ?targetSpotCapacity,
    };
  }

  factory ClusterMasterInstanceFleet.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleet(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypeConfigs: (() { final guardedValue = map['instanceTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMasterInstanceFleetInstanceTypeConfig>(guardedValue, (value) => ClusterMasterInstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      launchSpecifications: (() { final guardedValue = map['launchSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMasterInstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedOnDemandCapacity: (() { final guardedValue = map['provisionedOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedSpotCapacity: (() { final guardedValue = map['provisionedSpotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetOnDemandCapacity: (() { final guardedValue = map['targetOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSpotCapacity: (() { final guardedValue = map['targetSpotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

