// ignore_for_file: unused_element, unnecessary_cast

class GetDiscoveredServiceServiceProperty {
  /// The service project identifier that the underlying cloud resource resides in.
  final String gcpProject;

  /// The location of the discovered service.
  final String location;

  /// The location that the underlying resource resides in if it is zonal.
  final String zone;

  /// Creates a new [GetDiscoveredServiceServiceProperty].
  /// [gcpProject] The service project identifier that the underlying cloud resource resides in.
  /// [location] The location of the discovered service.
  /// [zone] The location that the underlying resource resides in if it is zonal.
  GetDiscoveredServiceServiceProperty({
    required this.gcpProject,
    required this.location,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpProject'] = gcpProject;
    map['location'] = location;
    map['zone'] = zone;
    return map;
  }

  factory GetDiscoveredServiceServiceProperty.fromMap(
      Map<String, dynamic> map) {
    return GetDiscoveredServiceServiceProperty(
      gcpProject: map['gcpProject'] as String,
      location: map['location'] as String,
      zone: map['zone'] as String,
    );
  }
}
