// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsResourceRecordSetGeoproximityLocationCoordinates {
  /// Latitude.
  final pulumi.Input<String> latitude;

  /// Longitude.
  final pulumi.Input<String> longitude;

  /// Creates a new [GetRecordsResourceRecordSetGeoproximityLocationCoordinates].
  /// [latitude] Latitude.
  /// [longitude] Longitude.
  GetRecordsResourceRecordSetGeoproximityLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'latitude': latitude, 'longitude': longitude};
  }

  factory GetRecordsResourceRecordSetGeoproximityLocationCoordinates.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRecordsResourceRecordSetGeoproximityLocationCoordinates(
      latitude: pulumi.Input.fromValue(map['latitude'] as String),
      longitude: pulumi.Input.fromValue(map['longitude'] as String),
    );
  }
}
