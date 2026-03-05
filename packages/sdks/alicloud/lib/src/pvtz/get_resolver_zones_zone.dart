// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResolverZonesZone {
  /// The status of the Zone.
  final pulumi.Input<String> status;
  /// The zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetResolverZonesZone].
  /// [status] The status of the Zone.
  /// [zoneId] The zone ID.
  GetResolverZonesZone({
    required this.status,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'zoneId': zoneId,
    };
  }

  factory GetResolverZonesZone.fromMap(Map<String, dynamic> map) {
    return GetResolverZonesZone(
      status: pulumi.Input.fromValue(map['status'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

