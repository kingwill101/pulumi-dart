// ignore_for_file: unused_element, unnecessary_cast

class ServicePerimeterStatusEgressPolicyEgressFromSource {
  /// An AccessLevel resource name that allows resources outside the ServicePerimeter to be accessed from the inside.
  final String? accessLevel;

  /// A Google Cloud resource that is allowed to egress the perimeter.
  /// Requests from these resources are allowed to access data outside the perimeter.
  /// Currently only projects are allowed. Project format: `projects/{project_number}`.
  /// The resource may be in any Google Cloud organization, not just the
  /// organization that the perimeter is defined in. `*` is not allowed, the
  /// case of allowing all Google Cloud resources only is not supported.
  final String? resource;

  ServicePerimeterStatusEgressPolicyEgressFromSource({
    this.accessLevel,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelValue = accessLevel;
    if (accessLevelValue != null) {
      map['accessLevel'] = accessLevelValue;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    return map;
  }

  factory ServicePerimeterStatusEgressPolicyEgressFromSource.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterStatusEgressPolicyEgressFromSource(
      accessLevel:
          map['accessLevel'] == null ? null : map['accessLevel'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}
