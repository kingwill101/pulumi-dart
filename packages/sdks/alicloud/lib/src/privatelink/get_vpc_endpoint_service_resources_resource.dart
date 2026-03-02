// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointServiceResourcesResource {
  /// The ID of the Vpc Endpoint Service Resource.
  final pulumi.Input<String> id;
  /// The ID of Resource.
  final pulumi.Input<String> resourceId;
  /// The type of Resource.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetVpcEndpointServiceResourcesResource].
  /// [id] The ID of the Vpc Endpoint Service Resource.
  /// [resourceId] The ID of Resource.
  /// [resourceType] The type of Resource.
  GetVpcEndpointServiceResourcesResource({
    required this.id,
    required this.resourceId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceId': resourceId,
      'resourceType': resourceType,
    };
  }

  factory GetVpcEndpointServiceResourcesResource.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceResourcesResource(
      id: (map['id'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

