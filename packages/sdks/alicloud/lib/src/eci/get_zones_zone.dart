// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// The endpoint of the region.
  final pulumi.Input<String> regionEndpoint;
  /// The list of available zone ids.
  final pulumi.Input<List<String>> zoneIds;

  /// Creates a new [GetZonesZone].
  /// [regionEndpoint] The endpoint of the region.
  /// [zoneIds] The list of available zone ids.
  GetZonesZone({
    required this.regionEndpoint,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionEndpoint': regionEndpoint,
      'zoneIds': zoneIds,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      regionEndpoint: (map['regionEndpoint'] as String).input(),
      zoneIds: ((map['zoneIds'] as List).cast<String>()).input(),
    );
  }
}

