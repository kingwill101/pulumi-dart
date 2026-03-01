// ignore_for_file: unused_element, unnecessary_cast

class MirroringDeploymentGroupConnectedEndpointGroup {
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final String? name;

  /// Creates a new [MirroringDeploymentGroupConnectedEndpointGroup].
  /// [name] (Output)
  MirroringDeploymentGroupConnectedEndpointGroup({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory MirroringDeploymentGroupConnectedEndpointGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return MirroringDeploymentGroupConnectedEndpointGroup(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
