// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates {
  /// A coordinate of the north–south position of a geographic point on the surface of the Earth (`-90` - `90`).
  final pulumi.Input<String> latitude;
  /// A coordinate of the east–west position of a geographic point on the surface of the Earth (`-180` - `180`).
  final pulumi.Input<String> longitude;

  /// Creates a new [RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates].
  /// [latitude] A coordinate of the north–south position of a geographic point on the surface of the Earth (`-90` - `90`).
  /// [longitude] A coordinate of the east–west position of a geographic point on the surface of the Earth (`-180` - `180`).
  const RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates(
      latitude: pulumi.Input.fromValue(map['latitude'] as String),
      longitude: pulumi.Input.fromValue(map['longitude'] as String),
    );
  }
}
