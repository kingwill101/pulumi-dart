// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_launch_specifications_on_demand_specification.dart';
import 'cluster_master_instance_fleet_launch_specifications_spot_specification.dart';

class ClusterMasterInstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications.
  final List<
          ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>?
      onDemandSpecifications;

  /// Configuration block for spot instances launch specifications.
  final List<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>?
      spotSpecifications;

  /// Creates a new [ClusterMasterInstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications.
  /// [spotSpecifications] Configuration block for spot instances launch specifications.
  ClusterMasterInstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandSpecificationsValue = onDemandSpecifications;
    if (onDemandSpecificationsValue != null) {
      map['onDemandSpecifications'] = pulumi.Input.encodeList<
          ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification,
          Map<String,
              dynamic>>(onDemandSpecificationsValue, (value) => value.toMap());
    }
    final spotSpecificationsValue = spotSpecifications;
    if (spotSpecificationsValue != null) {
      map['spotSpecifications'] = pulumi.Input.encodeList<
              ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification,
              Map<String, dynamic>>(
          spotSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterMasterInstanceFleetLaunchSpecifications.fromMap(
      Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>(
              map['onDemandSpecifications'],
              (value) =>
                  ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      spotSpecifications: map['spotSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>(
              map['spotSpecifications'],
              (value) =>
                  ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
