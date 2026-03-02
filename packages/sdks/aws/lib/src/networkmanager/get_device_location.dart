// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeviceLocation {
  /// Physical address.
  final pulumi.Input<String> address;
  /// Latitude.
  final pulumi.Input<String> latitude;
  /// Longitude.
  final pulumi.Input<String> longitude;

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
      address: (map['address'] as String).input(),
      latitude: (map['latitude'] as String).input(),
      longitude: (map['longitude'] as String).input(),
    );
  }
}

