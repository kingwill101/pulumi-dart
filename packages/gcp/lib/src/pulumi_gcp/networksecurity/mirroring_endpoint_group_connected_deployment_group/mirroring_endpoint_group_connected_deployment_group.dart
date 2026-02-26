// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../mirroring_endpoint_group_connected_deployment_group_location/mirroring_endpoint_group_connected_deployment_group_location.dart';

class MirroringEndpointGroupConnectedDeploymentGroup {
  /// (Output)
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final List<MirroringEndpointGroupConnectedDeploymentGroupLocation>? locations;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final String? name;

  MirroringEndpointGroupConnectedDeploymentGroup({
    this.locations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = Input.encodeList<
          MirroringEndpointGroupConnectedDeploymentGroupLocation,
          Map<String, dynamic>>(locationsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory MirroringEndpointGroupConnectedDeploymentGroup.fromMap(
      Map<String, dynamic> map) {
    return MirroringEndpointGroupConnectedDeploymentGroup(
      locations: map['locations'] == null
          ? null
          : Input.decodeList<
                  MirroringEndpointGroupConnectedDeploymentGroupLocation>(
              map['locations'],
              (value) => MirroringEndpointGroupConnectedDeploymentGroupLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
