// ignore_for_file: unused_element, unnecessary_cast


class GetDiscoveredWorkloadWorkloadProperty {
  /// The service project identifier that the underlying cloud resource resides in.
  final String gcpProject;
  /// The location of the discovered workload.
  final String location;
  /// The location that the underlying resource resides in if it is zonal.
  final String zone;

  /// Creates a new [GetDiscoveredWorkloadWorkloadProperty].
  /// [gcpProject] The service project identifier that the underlying cloud resource resides in.
  /// [location] The location of the discovered workload.
  /// [zone] The location that the underlying resource resides in if it is zonal.
  GetDiscoveredWorkloadWorkloadProperty({
    required this.gcpProject,
    required this.location,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpProject': gcpProject,
      'location': location,
      'zone': zone,
    };
  }

  factory GetDiscoveredWorkloadWorkloadProperty.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadWorkloadProperty(
      gcpProject: map['gcpProject'] as String,
      location: map['location'] as String,
      zone: map['zone'] as String,
    );
  }
}

