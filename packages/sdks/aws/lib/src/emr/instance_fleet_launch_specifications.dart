// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_launch_specifications_on_demand_specification.dart';
import 'instance_fleet_launch_specifications_spot_specification.dart';

class InstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications
  final List<InstanceFleetLaunchSpecificationsOnDemandSpecification>? onDemandSpecifications;
  /// Configuration block for spot instances launch specifications
  final List<InstanceFleetLaunchSpecificationsSpotSpecification>? spotSpecifications;

  /// Creates a new [InstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications
  /// [spotSpecifications] Configuration block for spot instances launch specifications
  InstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandSpecifications': ?onDemandSpecifications == null ? null : pulumi.Input.encodeList<InstanceFleetLaunchSpecificationsOnDemandSpecification, Map<String, dynamic>>(onDemandSpecifications!, (value) => value.toMap()),
      'spotSpecifications': ?spotSpecifications == null ? null : pulumi.Input.encodeList<InstanceFleetLaunchSpecificationsSpotSpecification, Map<String, dynamic>>(spotSpecifications!, (value) => value.toMap()),
    };
  }

  factory InstanceFleetLaunchSpecifications.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null ? null : pulumi.Input.decodeList<InstanceFleetLaunchSpecificationsOnDemandSpecification>(map['onDemandSpecifications'], (value) => InstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap((value as Map).cast<String, dynamic>())),
      spotSpecifications: map['spotSpecifications'] == null ? null : pulumi.Input.decodeList<InstanceFleetLaunchSpecificationsSpotSpecification>(map['spotSpecifications'], (value) => InstanceFleetLaunchSpecificationsSpotSpecification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

