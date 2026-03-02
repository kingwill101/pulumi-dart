// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// String to filter results by zone id.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZonesZone].
  /// [zoneId] String to filter results by zone id.
  GetZonesZone({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

