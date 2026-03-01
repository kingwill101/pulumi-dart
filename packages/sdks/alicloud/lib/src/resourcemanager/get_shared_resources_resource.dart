// ignore_for_file: unused_element, unnecessary_cast


class GetSharedResourcesResource {
  /// The ID of the Shared Resource. It formats as `<resource_id>:<resource_type>`.
  final String id;
  /// The ID of the shared resource.
  final String resourceId;
  /// The resource share ID of resource manager.
  final String resourceShareId;
  /// The type of shared resource.
  final String resourceType;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final String status;

  /// Creates a new [GetSharedResourcesResource].
  /// [id] The ID of the Shared Resource. It formats as `<resource_id>:<resource_type>`.
  /// [resourceId] The ID of the shared resource.
  /// [resourceShareId] The resource share ID of resource manager.
  /// [resourceType] The type of shared resource.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  GetSharedResourcesResource({
    required this.id,
    required this.resourceId,
    required this.resourceShareId,
    required this.resourceType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceId': resourceId,
      'resourceShareId': resourceShareId,
      'resourceType': resourceType,
      'status': status,
    };
  }

  factory GetSharedResourcesResource.fromMap(Map<String, dynamic> map) {
    return GetSharedResourcesResource(
      id: map['id'] as String,
      resourceId: map['resourceId'] as String,
      resourceShareId: map['resourceShareId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
    );
  }
}

