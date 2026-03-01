// ignore_for_file: unused_element, unnecessary_cast

/// Reference to another Cloud SQL instance.
class InstanceReferenceResponseSqladminV1beta4 {
  /// The name of the Cloud SQL instance being referenced. This does not include the project ID.
  final String name;

  /// The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  final String project;

  /// The region of the Cloud SQL instance being referenced.
  final String region;

  /// Creates a new [InstanceReferenceResponseSqladminV1beta4].
  /// [name] The name of the Cloud SQL instance being referenced. This does not include the project ID.
  /// [project] The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  /// [region] The region of the Cloud SQL instance being referenced.
  InstanceReferenceResponseSqladminV1beta4({
    required this.name,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': project,
      'region': region,
    };
  }

  factory InstanceReferenceResponseSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceReferenceResponseSqladminV1beta4(
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
