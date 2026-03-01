// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_instance_type_config.dart';
import 'cluster_master_instance_fleet_launch_specifications.dart';

class ClusterMasterInstanceFleet {
  /// ID of the cluster.
  final String? id;

  /// Configuration block for instance fleet.
  final List<ClusterMasterInstanceFleetInstanceTypeConfig>? instanceTypeConfigs;

  /// Configuration block for launch specification.
  final ClusterMasterInstanceFleetLaunchSpecifications? launchSpecifications;

  /// Friendly name given to the instance fleet.
  final String? name;
  final int? provisionedOnDemandCapacity;
  final int? provisionedSpotCapacity;

  /// Target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  final int? targetOnDemandCapacity;

  /// Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  final int? targetSpotCapacity;

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
      'instanceTypeConfigs': ?instanceTypeConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ClusterMasterInstanceFleetInstanceTypeConfig,
              Map<String, dynamic>
            >(instanceTypeConfigs!, (value) => value.toMap()),
      'launchSpecifications': ?launchSpecifications == null
          ? null
          : launchSpecifications!.toMap(),
      'name': ?name,
      'provisionedOnDemandCapacity': ?provisionedOnDemandCapacity,
      'provisionedSpotCapacity': ?provisionedSpotCapacity,
      'targetOnDemandCapacity': ?targetOnDemandCapacity,
      'targetSpotCapacity': ?targetSpotCapacity,
    };
  }

  factory ClusterMasterInstanceFleet.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleet(
      id: map['id'] == null ? null : map['id'] as String,
      instanceTypeConfigs: map['instanceTypeConfigs'] == null
          ? null
          : pulumi
                .Input.decodeList<ClusterMasterInstanceFleetInstanceTypeConfig>(
              map['instanceTypeConfigs'],
              (value) => ClusterMasterInstanceFleetInstanceTypeConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      launchSpecifications: map['launchSpecifications'] == null
          ? null
          : ClusterMasterInstanceFleetLaunchSpecifications.fromMap(
              (map['launchSpecifications'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      provisionedOnDemandCapacity: map['provisionedOnDemandCapacity'] == null
          ? null
          : map['provisionedOnDemandCapacity'] as int,
      provisionedSpotCapacity: map['provisionedSpotCapacity'] == null
          ? null
          : map['provisionedSpotCapacity'] as int,
      targetOnDemandCapacity: map['targetOnDemandCapacity'] == null
          ? null
          : map['targetOnDemandCapacity'] as int,
      targetSpotCapacity: map['targetSpotCapacity'] == null
          ? null
          : map['targetSpotCapacity'] as int,
    );
  }
}
