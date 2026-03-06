// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_core_instance_fleet_instance_type_config.dart';
import 'cluster_core_instance_fleet_launch_specifications.dart';

class ClusterCoreInstanceFleet {
  /// ID of the cluster.
  final pulumi.Input<String>? id;
  /// Configuration block for instance fleet.
  final pulumi.Input<List<ClusterCoreInstanceFleetInstanceTypeConfig>>? instanceTypeConfigs;
  /// Configuration block for launch specification.
  final pulumi.Input<ClusterCoreInstanceFleetLaunchSpecifications>? launchSpecifications;
  /// Friendly name given to the instance fleet.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? provisionedOnDemandCapacity;
  final pulumi.Input<int>? provisionedSpotCapacity;
  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final pulumi.Input<int>? targetOnDemandCapacity;
  /// Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final pulumi.Input<int>? targetSpotCapacity;

  /// Creates a new [ClusterCoreInstanceFleet].
  /// [id] ID of the cluster.
  /// [instanceTypeConfigs] Configuration block for instance fleet.
  /// [launchSpecifications] Configuration block for launch specification.
  /// [name] Friendly name given to the instance fleet.
  /// [provisionedOnDemandCapacity] Optional.
  /// [provisionedSpotCapacity] Optional.
  /// [targetOnDemandCapacity] The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  /// [targetSpotCapacity] Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  const ClusterCoreInstanceFleet({
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
      'instanceTypeConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterCoreInstanceFleetInstanceTypeConfig>, List<Map<String, dynamic>>>(instanceTypeConfigs, (value) => pulumi.Input.encodeList<ClusterCoreInstanceFleetInstanceTypeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchSpecifications': ?pulumi.Input.mapOptionalInputValue<ClusterCoreInstanceFleetLaunchSpecifications, Map<String, dynamic>>(launchSpecifications, (value) => value.toMap()),
      'name': ?name,
      'provisionedOnDemandCapacity': ?provisionedOnDemandCapacity,
      'provisionedSpotCapacity': ?provisionedSpotCapacity,
      'targetOnDemandCapacity': ?targetOnDemandCapacity,
      'targetSpotCapacity': ?targetSpotCapacity,
    };
  }

  factory ClusterCoreInstanceFleet.fromMap(Map<String, dynamic> map) {
    return ClusterCoreInstanceFleet(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceTypeConfigs: (() { final guardedValue = map['instanceTypeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCoreInstanceFleetInstanceTypeConfig>(guardedValue, (value) => ClusterCoreInstanceFleetInstanceTypeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      launchSpecifications: (() { final guardedValue = map['launchSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterCoreInstanceFleetLaunchSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedOnDemandCapacity: (() { final guardedValue = map['provisionedOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedSpotCapacity: (() { final guardedValue = map['provisionedSpotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetOnDemandCapacity: (() { final guardedValue = map['targetOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetSpotCapacity: (() { final guardedValue = map['targetSpotCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

