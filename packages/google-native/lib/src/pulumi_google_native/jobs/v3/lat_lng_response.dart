// ignore_for_file: unused_element, unnecessary_cast

/// An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
class LatLngResponse {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final double latitude;

  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final double longitude;

  LatLngResponse({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  factory LatLngResponse.fromMap(Map<String, dynamic> map) {
    return LatLngResponse(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }
}
