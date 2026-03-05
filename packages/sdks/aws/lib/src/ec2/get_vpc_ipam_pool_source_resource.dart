// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamPoolSourceResource {
  /// (Required) ID of the resource.
  final pulumi.Input<String> resourceId;
  /// (Required) Owner of the resource.
  final pulumi.Input<String> resourceOwner;
  /// (Required) Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  final pulumi.Input<String> resourceRegion;
  /// (Required) Type of the resource. (`vpc`)
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetVpcIpamPoolSourceResource].
  /// [resourceId] (Required) ID of the resource.
  /// [resourceOwner] (Required) Owner of the resource.
  /// [resourceRegion] (Required) Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  /// [resourceType] (Required) Type of the resource. (`vpc`)
  GetVpcIpamPoolSourceResource({
    required this.resourceId,
    required this.resourceOwner,
    required this.resourceRegion,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceOwner': resourceOwner,
      'resourceRegion': resourceRegion,
      'resourceType': resourceType,
    };
  }

  factory GetVpcIpamPoolSourceResource.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolSourceResource(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceOwner: pulumi.Input.fromValue(map['resourceOwner'] as String),
      resourceRegion: pulumi.Input.fromValue(map['resourceRegion'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

