// ignore_for_file: unused_element, unnecessary_cast


class GetSiteLocation {
  /// Address of the location.
  final String address;
  /// Latitude of the location.
  final String latitude;
  /// Longitude of the location.
  final String longitude;

  /// Creates a new [GetSiteLocation].
  /// [address] Address of the location.
  /// [latitude] Latitude of the location.
  /// [longitude] Longitude of the location.
  GetSiteLocation({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory GetSiteLocation.fromMap(Map<String, dynamic> map) {
    return GetSiteLocation(
      address: map['address'] as String,
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}

