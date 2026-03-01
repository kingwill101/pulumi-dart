// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_zone_instance_type.dart';

class GetZonesZone {
  /// A list of instance type information collection
  final List<GetZonesZoneInstanceType> instanceTypes;
  /// String to filter results by zone id.
  final String zoneId;

  /// Creates a new [GetZonesZone].
  /// [instanceTypes] A list of instance type information collection
  /// [zoneId] String to filter results by zone id.
  GetZonesZone({
    required this.instanceTypes,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTypes': pulumi.Input.encodeList<GetZonesZoneInstanceType, Map<String, dynamic>>(instanceTypes, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      instanceTypes: pulumi.Input.decodeList<GetZonesZoneInstanceType>(map['instanceTypes'], (value) => GetZonesZoneInstanceType.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}

