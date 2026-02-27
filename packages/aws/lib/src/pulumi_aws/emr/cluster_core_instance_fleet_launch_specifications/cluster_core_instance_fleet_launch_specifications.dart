// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_core_instance_fleet_launch_specifications_on_demand_specification/cluster_core_instance_fleet_launch_specifications_on_demand_specification.dart';
import '../cluster_core_instance_fleet_launch_specifications_spot_specification/cluster_core_instance_fleet_launch_specifications_spot_specification.dart';

class ClusterCoreInstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications.
  final List<ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification>?
      onDemandSpecifications;

  /// Configuration block for spot instances launch specifications.
  final List<ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification>?
      spotSpecifications;

  ClusterCoreInstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandSpecificationsValue = onDemandSpecifications;
    if (onDemandSpecificationsValue != null) {
      map['onDemandSpecifications'] = pulumi.Input.encodeList<
              ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification,
              Map<String, dynamic>>(
          onDemandSpecificationsValue, (value) => value.toMap());
    }
    final spotSpecificationsValue = spotSpecifications;
    if (spotSpecificationsValue != null) {
      map['spotSpecifications'] = pulumi.Input.encodeList<
              ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification,
              Map<String, dynamic>>(
          spotSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterCoreInstanceFleetLaunchSpecifications.fromMap(
      Map<String, dynamic> map) {
    return ClusterCoreInstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification>(
              map['onDemandSpecifications'],
              (value) =>
                  ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      spotSpecifications: map['spotSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification>(
              map['spotSpecifications'],
              (value) =>
                  ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
