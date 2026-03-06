// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedResourcesResource {
  /// The ID of the Shared Resource. It formats as `&lt;resource_id&gt;:&lt;resource_type&gt;`.
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
  /// [id] The ID of the Shared Resource. It formats as `&lt;resource_id&gt;:&lt;resource_type&gt;`.
  /// [resourceId] The ID of the shared resource.
  /// [resourceShareId] The resource share ID of resource manager.
  /// [resourceType] The type of shared resource.
  /// [status] The status of share resource. Valid values: `Associated`, `Associating`, `Disassociated`, `Disassociating` and `Failed`.
  const GetSharedResourcesResource({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceShareId: pulumi.Input.fromValue(map['resourceShareId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

