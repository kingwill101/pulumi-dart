// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamPoolSourceResource {
  /// ID of the resource.
  final String resourceId;

  /// Owner of the resource.
  final String resourceOwner;

  /// Region where the resource exists. Must match the `locale` of the parent IPAM Pool.
  final String resourceRegion;

  /// Type of the resource. (`vpc`)
  final String resourceType;

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
    final map = <String, dynamic>{};
    map['resourceId'] = resourceId;
    map['resourceOwner'] = resourceOwner;
    map['resourceRegion'] = resourceRegion;
    map['resourceType'] = resourceType;
    return map;
  }

  factory VpcIpamPoolSourceResource.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolSourceResource(
      resourceId: map['resourceId'] as String,
      resourceOwner: map['resourceOwner'] as String,
      resourceRegion: map['resourceRegion'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
