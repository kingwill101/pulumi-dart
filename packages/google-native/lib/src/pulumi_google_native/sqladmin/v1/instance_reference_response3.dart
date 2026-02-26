// ignore_for_file: unused_element, unnecessary_cast

/// Reference to another Cloud SQL instance.
class InstanceReferenceResponse3 {
  /// The name of the Cloud SQL instance being referenced. This does not include the project ID.
  final String name;

  /// The project ID of the Cloud SQL instance being referenced. The default is the same project ID as the instance references it.
  final String project;

  /// The region of the Cloud SQL instance being referenced.
  final String region;

  InstanceReferenceResponse3({
    required this.name,
    required this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['project'] = project;
    map['region'] = region;
    return map;
  }

  factory InstanceReferenceResponse3.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceResponse3(
      name: map['name'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
    );
  }
}
