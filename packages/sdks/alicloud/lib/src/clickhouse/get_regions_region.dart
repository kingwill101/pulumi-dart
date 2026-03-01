// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region_zone_id.dart';

class GetRegionsRegion {
  /// The Region ID.
  final String regionId;
  /// A list of available zone ids in the region_id.
  final List<GetRegionsRegionZoneId> zoneIds;

  /// Creates a new [GetRegionsRegion].
  /// [regionId] The Region ID.
  /// [zoneIds] A list of available zone ids in the region_id.
  GetRegionsRegion({
    required this.regionId,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': regionId,
      'zoneIds': pulumi.Input.encodeList<GetRegionsRegionZoneId, Map<String, dynamic>>(zoneIds, (value) => value.toMap()),
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      regionId: map['regionId'] as String,
      zoneIds: pulumi.Input.decodeList<GetRegionsRegionZoneId>(map['zoneIds'], (value) => GetRegionsRegionZoneId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

