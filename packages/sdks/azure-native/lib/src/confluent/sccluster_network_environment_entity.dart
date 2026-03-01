// ignore_for_file: unused_element, unnecessary_cast


/// The environment or the network to which cluster belongs
class SCClusterNetworkEnvironmentEntity {
  /// Environment of the referred resource
  final String? environment;
  /// ID of the referred resource
  final String? id;
  /// API URL for accessing or modifying the referred object
  final String? related;
  /// CRN reference to the referred resource
  final String? resourceName;

  /// Creates a new [SCClusterNetworkEnvironmentEntity].
  /// [environment] Environment of the referred resource
  /// [id] ID of the referred resource
  /// [related] API URL for accessing or modifying the referred object
  /// [resourceName] CRN reference to the referred resource
  SCClusterNetworkEnvironmentEntity({
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

  factory SCClusterNetworkEnvironmentEntity.fromMap(Map<String, dynamic> map) {
    return SCClusterNetworkEnvironmentEntity(
      environment: map['environment'] == null ? null : map['environment'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      related: map['related'] == null ? null : map['related'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
    );
  }
}

