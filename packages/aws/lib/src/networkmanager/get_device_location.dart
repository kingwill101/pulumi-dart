// ignore_for_file: unused_element, unnecessary_cast

class GetDeviceLocation {
  /// Physical address.
  final String address;

  /// Latitude.
  final String latitude;

  /// Longitude.
  final String longitude;

  /// Creates a new [GetDeviceLocation].
  /// [address] Physical address.
  /// [latitude] Latitude.
  /// [longitude] Longitude.
  GetDeviceLocation({
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

  factory GetDeviceLocation.fromMap(Map<String, dynamic> map) {
    return GetDeviceLocation(
      address: map['address'] as String,
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}
