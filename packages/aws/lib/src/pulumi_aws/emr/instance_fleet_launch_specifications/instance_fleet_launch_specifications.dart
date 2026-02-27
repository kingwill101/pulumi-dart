// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_fleet_launch_specifications_on_demand_specification/instance_fleet_launch_specifications_on_demand_specification.dart';
import '../instance_fleet_launch_specifications_spot_specification/instance_fleet_launch_specifications_spot_specification.dart';

class InstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications
  final List<InstanceFleetLaunchSpecificationsOnDemandSpecification>?
      onDemandSpecifications;

  /// Configuration block for spot instances launch specifications
  final List<InstanceFleetLaunchSpecificationsSpotSpecification>?
      spotSpecifications;

  InstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandSpecificationsValue = onDemandSpecifications;
    if (onDemandSpecificationsValue != null) {
      map['onDemandSpecifications'] = pulumi.Input.encodeList<
              InstanceFleetLaunchSpecificationsOnDemandSpecification,
              Map<String, dynamic>>(
          onDemandSpecificationsValue, (value) => value.toMap());
    }
    final spotSpecificationsValue = spotSpecifications;
    if (spotSpecificationsValue != null) {
      map['spotSpecifications'] = pulumi.Input.encodeList<
              InstanceFleetLaunchSpecificationsSpotSpecification,
              Map<String, dynamic>>(
          spotSpecificationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceFleetLaunchSpecifications.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceFleetLaunchSpecificationsOnDemandSpecification>(
              map['onDemandSpecifications'],
              (value) => InstanceFleetLaunchSpecificationsOnDemandSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      spotSpecifications: map['spotSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceFleetLaunchSpecificationsSpotSpecification>(
              map['spotSpecifications'],
              (value) =>
                  InstanceFleetLaunchSpecificationsSpotSpecification.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
