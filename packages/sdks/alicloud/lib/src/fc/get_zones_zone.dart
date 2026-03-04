// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// ID of the zone.
  final pulumi.Input<String> id;

  /// Creates a new [GetZonesZone].
  /// [id] ID of the zone.
  GetZonesZone({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(id: pulumi.Input.fromValue(map['id'] as String));
  }
}
