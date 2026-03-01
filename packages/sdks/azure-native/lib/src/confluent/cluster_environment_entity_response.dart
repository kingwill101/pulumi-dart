// ignore_for_file: unused_element, unnecessary_cast


/// The environment to which cluster belongs
class ClusterEnvironmentEntityResponse {
  /// Environment of the referred resource
  final String? environment;
  /// ID of the referred resource
  final String? id;
  /// API URL for accessing or modifying the referred object
  final String? related;
  /// CRN reference to the referred resource
  final String? resourceName;

  /// Creates a new [ClusterEnvironmentEntityResponse].
  /// [environment] Environment of the referred resource
  /// [id] ID of the referred resource
  /// [related] API URL for accessing or modifying the referred object
  /// [resourceName] CRN reference to the referred resource
  ClusterEnvironmentEntityResponse({
    this.environment,
    this.id,
    this.related,
    this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?environment,
      'id': ?id,
      'related': ?related,
      'resourceName': ?resourceName,
    };
  }

  factory ClusterEnvironmentEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterEnvironmentEntityResponse(
      environment: map['environment'] == null ? null : map['environment'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      related: map['related'] == null ? null : map['related'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
    );
  }
}

