// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_core_instance_fleet_launch_specifications_on_demand_specification.dart';
import 'cluster_core_instance_fleet_launch_specifications_spot_specification.dart';

class ClusterCoreInstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications.
  final pulumi.Input<
    List<ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification>
  >?
  onDemandSpecifications;

  /// Configuration block for spot instances launch specifications.
  final pulumi.Input<
    List<ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification>
  >?
  spotSpecifications;

  /// Creates a new [ClusterCoreInstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications.
  /// [spotSpecifications] Configuration block for spot instances launch specifications.
  ClusterCoreInstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification
            >,
            List<Map<String, dynamic>>
          >(
            onDemandSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'spotSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification>,
            List<Map<String, dynamic>>
          >(
            spotSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterCoreInstanceFleetLaunchSpecifications.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterCoreInstanceFleetLaunchSpecifications(
      onDemandSpecifications: (() {
        final guardedValue = map['onDemandSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification
          >(
            guardedValue,
            (value) =>
                ClusterCoreInstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      spotSpecifications: (() {
        final guardedValue = map['spotSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification
          >(
            guardedValue,
            (value) =>
                ClusterCoreInstanceFleetLaunchSpecificationsSpotSpecification.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
