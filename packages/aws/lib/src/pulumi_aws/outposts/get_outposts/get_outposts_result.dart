// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOutposts.
class GetOutpostsResult {
  /// Set of Amazon Resource Names (ARNs).
  final List<String> arns;
  final String availabilityZone;
  final String availabilityZoneId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of identifiers.
  final List<String> ids;
  final String ownerId;
  final String region;
  final String siteId;

  GetOutpostsResult({
    required this.arns,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.id,
    required this.ids,
    required this.ownerId,
    required this.region,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['availabilityZone'] = availabilityZone;
    map['availabilityZoneId'] = availabilityZoneId;
    map['id'] = id;
    map['ids'] = ids;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['siteId'] = siteId;
    return map;
  }

  factory GetOutpostsResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostsResult(
      arns: (map['arns'] as List).cast<String>(),
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      siteId: map['siteId'] as String,
    );
  }
}
