// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_launch_specifications_on_demand_specification.dart';
import 'cluster_master_instance_fleet_launch_specifications_spot_specification.dart';

class ClusterMasterInstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications.
  final List<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>? onDemandSpecifications;
  /// Configuration block for spot instances launch specifications.
  final List<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>? spotSpecifications;

  /// Creates a new [ClusterMasterInstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications.
  /// [spotSpecifications] Configuration block for spot instances launch specifications.
  ClusterMasterInstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandSpecifications': ?onDemandSpecifications == null ? null : pulumi.Input.encodeList<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification, Map<String, dynamic>>(onDemandSpecifications!, (value) => value.toMap()),
      'spotSpecifications': ?spotSpecifications == null ? null : pulumi.Input.encodeList<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification, Map<String, dynamic>>(spotSpecifications!, (value) => value.toMap()),
    };
  }

  factory ClusterMasterInstanceFleetLaunchSpecifications.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null ? null : pulumi.Input.decodeList<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>(map['onDemandSpecifications'], (value) => ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap((value as Map).cast<String, dynamic>())),
      spotSpecifications: map['spotSpecifications'] == null ? null : pulumi.Input.decodeList<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>(map['spotSpecifications'], (value) => ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

