// ignore_for_file: unused_element, unnecessary_cast


class NetworkAclAttachmentResource {
  /// The resource id that the network acl will associate with.
  final String resourceId;
  /// The resource id that the network acl will associate with. Only support `VSwitch` now.
  final String resourceType;

  /// Creates a new [NetworkAclAttachmentResource].
  /// [resourceId] The resource id that the network acl will associate with.
  /// [resourceType] The resource id that the network acl will associate with. Only support `VSwitch` now.
  NetworkAclAttachmentResource({
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory NetworkAclAttachmentResource.fromMap(Map<String, dynamic> map) {
    return NetworkAclAttachmentResource(
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

