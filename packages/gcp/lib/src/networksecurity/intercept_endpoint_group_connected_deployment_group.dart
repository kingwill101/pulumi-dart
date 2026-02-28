// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_endpoint_group_connected_deployment_group_location.dart';

class InterceptEndpointGroupConnectedDeploymentGroup {
  /// (Output)
  /// The list of locations where the deployment group is present.
  /// Structure is documented below.
  final List<InterceptEndpointGroupConnectedDeploymentGroupLocation>? locations;

  /// (Output)
  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  /// See https://google.aip.dev/124.
  final String? name;

  /// Creates a new [InterceptEndpointGroupConnectedDeploymentGroup].
  /// [locations] (Output)
  /// [name] (Output)
  InterceptEndpointGroupConnectedDeploymentGroup({
    this.locations,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = pulumi.Input.encodeList<
          InterceptEndpointGroupConnectedDeploymentGroupLocation,
          Map<String, dynamic>>(locationsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory InterceptEndpointGroupConnectedDeploymentGroup.fromMap(
      Map<String, dynamic> map) {
    return InterceptEndpointGroupConnectedDeploymentGroup(
      locations: map['locations'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterceptEndpointGroupConnectedDeploymentGroupLocation>(
              map['locations'],
              (value) => InterceptEndpointGroupConnectedDeploymentGroupLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
