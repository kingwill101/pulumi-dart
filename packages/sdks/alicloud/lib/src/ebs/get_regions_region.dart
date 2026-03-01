// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region_zone.dart';

class GetRegionsRegion {
  /// The ID of the region.
  final String regionId;
  /// A list of Ebs Zones.
  final List<GetRegionsRegionZone> zones;

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
      'zones': pulumi.Input.encodeList<GetRegionsRegionZone, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      regionId: map['regionId'] as String,
      zones: pulumi.Input.decodeList<GetRegionsRegionZone>(map['zones'], (value) => GetRegionsRegionZone.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

