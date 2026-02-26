// ignore_for_file: unused_element, unnecessary_cast

class GetRecordsResourceRecordSetGeoproximityLocationCoordinates {
  /// Latitude.
  final String latitude;

  /// Longitude.
  final String longitude;

  GetRecordsResourceRecordSetGeoproximityLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  factory GetRecordsResourceRecordSetGeoproximityLocationCoordinates.fromMap(
      Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetGeoproximityLocationCoordinates(
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}
