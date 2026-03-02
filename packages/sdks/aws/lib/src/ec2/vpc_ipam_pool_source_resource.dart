// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIpamPoolSourceResource {
  /// ID of the resource.
  final pulumi.Input<String> resourceId;
  /// Owner of the resource.
  final pulumi.Input<String> resourceOwner;
  /// Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  final pulumi.Input<String> resourceRegion;
  /// Type of the resource. (`vpc`)
  final pulumi.Input<String> resourceType;

  /// Creates a new [VpcIpamPoolSourceResource].
  /// [resourceId] ID of the resource.
  /// [resourceOwner] Owner of the resource.
  /// [resourceRegion] Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  /// [resourceType] Type of the resource. (`vpc`)
  VpcIpamPoolSourceResource({
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

  factory VpcIpamPoolSourceResource.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolSourceResource(
      resourceId: (map['resourceId'] as String).input(),
      resourceOwner: (map['resourceOwner'] as String).input(),
      resourceRegion: (map['resourceRegion'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

