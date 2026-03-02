// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclResource {
  /// The ID of the associated resource.
  final pulumi.Input<String> resourceId;
  /// The type of the associated resource.
  final pulumi.Input<String> resourceType;
  /// The state of the network ACL.
  final pulumi.Input<String>? status;

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
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

