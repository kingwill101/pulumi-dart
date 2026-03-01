// ignore_for_file: unused_element, unnecessary_cast


class GetRecordsResourceRecordSetGeoproximityLocationCoordinates {
  /// Latitude.
  final String latitude;
  /// Longitude.
  final String longitude;

  /// Creates a new [GetRecordsResourceRecordSetGeoproximityLocationCoordinates].
  /// [latitude] Latitude.
  /// [longitude] Longitude.
  GetRecordsResourceRecordSetGeoproximityLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory GetRecordsResourceRecordSetGeoproximityLocationCoordinates.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetGeoproximityLocationCoordinates(
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}

