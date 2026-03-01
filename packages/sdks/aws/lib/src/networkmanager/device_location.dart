// ignore_for_file: unused_element, unnecessary_cast


class DeviceLocation {
  /// Physical address.
  final String? address;
  /// Latitude.
  final String? latitude;
  /// Longitude.
  final String? longitude;

  /// Creates a new [DeviceLocation].
  /// [address] Physical address.
  /// [latitude] Latitude.
  /// [longitude] Longitude.
  DeviceLocation({
    this.address,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'latitude': ?latitude,
      'longitude': ?longitude,
    };
  }

  factory DeviceLocation.fromMap(Map<String, dynamic> map) {
    return DeviceLocation(
      address: map['address'] == null ? null : map['address'] as String,
      latitude: map['latitude'] == null ? null : map['latitude'] as String,
      longitude: map['longitude'] == null ? null : map['longitude'] as String,
    );
  }
}

