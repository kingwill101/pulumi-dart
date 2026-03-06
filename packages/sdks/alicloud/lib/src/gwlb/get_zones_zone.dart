// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// The zone ID.
  final pulumi.Input<String> id;
  /// The zone name.
  final pulumi.Input<String> localName;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZonesZone].
  /// [id] The zone ID.
  /// [localName] The zone name.
  /// [zoneId] The zone ID.
  const GetZonesZone({
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

