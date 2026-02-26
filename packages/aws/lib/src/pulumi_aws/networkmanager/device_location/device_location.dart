// ignore_for_file: unused_element, unnecessary_cast

class DeviceLocation {
  /// Physical address.
  final String? address;

  /// Latitude.
  final String? latitude;

  /// Longitude.
  final String? longitude;

  DeviceLocation({
    this.address,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final latitudeValue = latitude;
    if (latitudeValue != null) {
      map['latitude'] = latitudeValue;
    }
    final longitudeValue = longitude;
    if (longitudeValue != null) {
      map['longitude'] = longitudeValue;
    }
    return map;
  }

  factory DeviceLocation.fromMap(Map<String, dynamic> map) {
    return DeviceLocation(
      address: map['address'] == null ? null : map['address'] as String,
      latitude: map['latitude'] == null ? null : map['latitude'] as String,
      longitude: map['longitude'] == null ? null : map['longitude'] as String,
    );
  }
}
