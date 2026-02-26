// ignore_for_file: unused_element, unnecessary_cast

class GetSiteLocation {
  /// Address of the location.
  final String address;

  /// Latitude of the location.
  final String latitude;

  /// Longitude of the location.
  final String longitude;

  GetSiteLocation({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  factory GetSiteLocation.fromMap(Map<String, dynamic> map) {
    return GetSiteLocation(
      address: map['address'] as String,
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}
