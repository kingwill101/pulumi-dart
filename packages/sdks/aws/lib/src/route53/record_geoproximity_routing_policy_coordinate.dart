// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordGeoproximityRoutingPolicyCoordinate {
  final pulumi.Input<String> latitude;
  final pulumi.Input<String> longitude;

  /// Creates a new [RecordGeoproximityRoutingPolicyCoordinate].
  /// [latitude] Required.
  /// [longitude] Required.
  RecordGeoproximityRoutingPolicyCoordinate({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'latitude': latitude, 'longitude': longitude};
  }

  factory RecordGeoproximityRoutingPolicyCoordinate.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecordGeoproximityRoutingPolicyCoordinate(
      latitude: pulumi.Input.fromValue(map['latitude'] as String),
      longitude: pulumi.Input.fromValue(map['longitude'] as String),
    );
  }
}
