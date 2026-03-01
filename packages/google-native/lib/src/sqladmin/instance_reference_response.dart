// ignore_for_file: unused_element, unnecessary_cast

/// Reference to another Cloud SQL instance.
class InstanceReferenceResponse {
  /// The name of the Cloud SQL instance being referenced. This does not include the project ID.
  final String name;

  /// The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  final String project;

  /// The region of the Cloud SQL instance being referenced.
  final String region;

  /// Creates a new [InstanceReferenceResponse].
  /// [name] The name of the Cloud SQL instance being referenced. This does not include the project ID.
  /// [project] The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  /// [region] The region of the Cloud SQL instance being referenced.
  InstanceReferenceResponse({
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

  factory InstanceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceResponse(
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
