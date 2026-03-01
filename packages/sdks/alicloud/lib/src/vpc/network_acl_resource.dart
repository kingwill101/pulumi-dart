// ignore_for_file: unused_element, unnecessary_cast


class NetworkAclResource {
  /// The ID of the associated resource.
  final String resourceId;
  /// The type of the associated resource.
  final String resourceType;
  /// The state of the network ACL.
  final String? status;

  /// Creates a new [NetworkAclResource].
  /// [resourceId] The ID of the associated resource.
  /// [resourceType] The type of the associated resource.
  /// [status] The state of the network ACL.
  NetworkAclResource({
    required this.resourceId,
    required this.resourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
      'status': ?status,
    };
  }

  factory NetworkAclResource.fromMap(Map<String, dynamic> map) {
    return NetworkAclResource(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

