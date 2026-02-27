// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolSourceResource {
  /// (Required) ID of the resource.
  final String resourceId;

  /// (Required) Owner of the resource.
  final String resourceOwner;

  /// (Required) Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  final String resourceRegion;

  /// (Required) Type of the resource. (`vpc`)
  final String resourceType;

  GetVpcIpamPoolSourceResource({
    required this.resourceId,
    required this.resourceOwner,
    required this.resourceRegion,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceId'] = resourceId;
    map['resourceOwner'] = resourceOwner;
    map['resourceRegion'] = resourceRegion;
    map['resourceType'] = resourceType;
    return map;
  }

  factory GetVpcIpamPoolSourceResource.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolSourceResource(
      resourceId: map['resourceId'] as String,
      resourceOwner: map['resourceOwner'] as String,
      resourceRegion: map['resourceRegion'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
