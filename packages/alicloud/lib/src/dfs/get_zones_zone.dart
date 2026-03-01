// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_option.dart';

class GetZonesZone {
  /// A list of available configurations of the Zone.
  final List<GetZonesZoneOption> options;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [GetZonesZone].
  /// [options] A list of available configurations of the Zone.
  /// [zoneId] The zone ID.
  GetZonesZone({
    required this.options,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': pulumi.Input.encodeList<GetZonesZoneOption, Map<String, dynamic>>(options, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      options: pulumi.Input.decodeList<GetZonesZoneOption>(map['options'], (value) => GetZonesZoneOption.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}

