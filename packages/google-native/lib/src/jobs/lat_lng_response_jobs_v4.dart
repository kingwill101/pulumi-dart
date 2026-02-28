// ignore_for_file: unused_element, unnecessary_cast


/// An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
class LatLngResponseJobsV4 {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final double latitude;
  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final double longitude;

  /// Creates a new [LatLngResponseJobsV4].
  /// [latitude] The latitude in degrees. It must be in the range [-90.0, +90.0].
  /// [longitude] The longitude in degrees. It must be in the range [-180.0, +180.0].
  LatLngResponseJobsV4({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LatLngResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return LatLngResponseJobsV4(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }
}

