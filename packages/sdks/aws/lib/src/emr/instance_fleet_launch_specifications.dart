// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_fleet_launch_specifications_on_demand_specification.dart';
import 'instance_fleet_launch_specifications_spot_specification.dart';

class InstanceFleetLaunchSpecifications {
  /// Configuration block for on demand instances launch specifications
  final pulumi.Input<List<InstanceFleetLaunchSpecificationsOnDemandSpecification>>? onDemandSpecifications;
  /// Configuration block for spot instances launch specifications
  final pulumi.Input<List<InstanceFleetLaunchSpecificationsSpotSpecification>>? spotSpecifications;

  /// Creates a new [InstanceFleetLaunchSpecifications].
  /// [onDemandSpecifications] Configuration block for on demand instances launch specifications
  /// [spotSpecifications] Configuration block for spot instances launch specifications
  InstanceFleetLaunchSpecifications({
    this.onDemandSpecifications,
    this.spotSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandSpecifications': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetLaunchSpecificationsOnDemandSpecification>, List<Map<String, dynamic>>>(onDemandSpecifications, (value) => pulumi.Input.encodeList<InstanceFleetLaunchSpecificationsOnDemandSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotSpecifications': ?pulumi.Input.mapOptionalInputValue<List<InstanceFleetLaunchSpecificationsSpotSpecification>, List<Map<String, dynamic>>>(spotSpecifications, (value) => pulumi.Input.encodeList<InstanceFleetLaunchSpecificationsSpotSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceFleetLaunchSpecifications.fromMap(Map<String, dynamic> map) {
    return InstanceFleetLaunchSpecifications(
      onDemandSpecifications: map['onDemandSpecifications'] == null ? null : ((pulumi.Input.decodeList<InstanceFleetLaunchSpecificationsOnDemandSpecification>(map['onDemandSpecifications']!, (value) => InstanceFleetLaunchSpecificationsOnDemandSpecification.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      spotSpecifications: map['spotSpecifications'] == null ? null : ((pulumi.Input.decodeList<InstanceFleetLaunchSpecificationsSpotSpecification>(map['spotSpecifications']!, (value) => InstanceFleetLaunchSpecificationsSpotSpecification.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

