// ignore_for_file: unused_element, unnecessary_cast

class InterceptDeploymentGroupConnectedEndpointGroup {
  /// (Output)
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final String? name;

  InterceptDeploymentGroupConnectedEndpointGroup({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory InterceptDeploymentGroupConnectedEndpointGroup.fromMap(
      Map<String, dynamic> map) {
    return InterceptDeploymentGroupConnectedEndpointGroup(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
