// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region_zone.dart';

class GetRegionsRegion {
  /// The ID of the region.
  final pulumi.Input<String> regionId;
  /// A list of Ebs Zones.
  final pulumi.Input<List<GetRegionsRegionZone>> zones;

  /// Creates a new [GetRegionsRegion].
  /// [regionId] The ID of the region.
  /// [zones] A list of Ebs Zones.
  GetRegionsRegion({
    required this.regionId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionId': regionId,
      'zones': pulumi.Input.mapInputValue<List<GetRegionsRegionZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<GetRegionsRegionZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      regionId: (map['regionId'] as String).input(),
      zones: (pulumi.Input.decodeList<GetRegionsRegionZone>(map['zones'], (value) => GetRegionsRegionZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

