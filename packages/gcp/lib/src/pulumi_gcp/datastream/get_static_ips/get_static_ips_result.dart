// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getStaticIps.
class GetStaticIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// A list of static IP addresses that Datastream will connect from.
  final List<String> staticIps;

  GetStaticIpsResult({
    required this.id,
    required this.location,
    this.project,
    required this.staticIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['staticIps'] = staticIps;
    return map;
  }

  factory GetStaticIpsResult.fromMap(Map<String, dynamic> map) {
    return GetStaticIpsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      staticIps: (map['staticIps'] as List).cast<String>(),
    );
  }
}
