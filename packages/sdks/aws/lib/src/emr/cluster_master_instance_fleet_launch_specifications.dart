// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_master_instance_fleet_launch_specifications_on_demand_specification.dart';
import 'cluster_master_instance_fleet_launch_specifications_spot_specification.dart';

class ClusterMasterInstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications.
  final pulumi.Input<List<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>>? onDemandSpecifications;
  /// Configuration block for spot instances launch specifications.
  final pulumi.Input<List<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>>? spotSpecifications;

  /// Creates a new [ClusterMasterInstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications.
  /// [spotSpecifications] Configuration block for spot instances launch specifications.
  ClusterMasterInstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandSpecifications': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>, List<Map<String, dynamic>>>(onDemandSpecifications, (value) => pulumi.Input.encodeList<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotSpecifications': ?pulumi.Input.mapOptionalInputValue<List<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>, List<Map<String, dynamic>>>(spotSpecifications, (value) => pulumi.Input.encodeList<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterMasterInstanceFleetLaunchSpecifications.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceFleetLaunchSpecifications(
      onDemandSpecifications: (() { final guardedValue = map['onDemandSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification>(guardedValue, (value) => ClusterMasterInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spotSpecifications: (() { final guardedValue = map['spotSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification>(guardedValue, (value) => ClusterMasterInstanceFleetLaunchSpecificationsSpotSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

