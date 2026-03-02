// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedResourcesResource {
  /// The ID of the Shared Resource. It formats as `<resource_id>:<resource_type>`.
  final pulumi.Input<String> id;
  /// The ID of the shared resource.
  final pulumi.Input<String> resourceId;
  /// The resource share ID of resource manager.
  final pulumi.Input<String> resourceShareId;
  /// The type of shared resource.
  final pulumi.Input<String> resourceType;
  /// The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  final pulumi.Input<String> status;

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
      id: (map['id'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceShareId: (map['resourceShareId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

