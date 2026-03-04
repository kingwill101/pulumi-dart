// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// The ID of zone.
  final pulumi.Input<String> id;

  /// The local name.
  final pulumi.Input<String> localName;

  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZonesZone].
  /// [id] The ID of zone.
  /// [localName] The local name.
  /// [zoneId] The zone ID.
  GetZonesZone({
    required this.id,
    required this.localName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localName': localName,
      'zoneId': zoneId,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      id: pulumi.Input.fromValue(map['id'] as String),
      localName: pulumi.Input.fromValue(map['localName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
