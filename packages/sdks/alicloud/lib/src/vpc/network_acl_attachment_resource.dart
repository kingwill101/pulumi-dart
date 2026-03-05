// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclAttachmentResource {
  /// The resource id that the network acl will associate with.
  final pulumi.Input<String> resourceId;
  /// The resource id that the network acl will associate with. Only support `VSwitch` now.
  final pulumi.Input<String> resourceType;

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
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

