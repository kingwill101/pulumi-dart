// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeviceLocation {
  /// Physical address.
  final pulumi.Input<String>? address;

  /// Latitude.
  final pulumi.Input<String>? latitude;

  /// Longitude.
  final pulumi.Input<String>? longitude;

  /// Creates a new [DeviceLocation].
  /// [address] Physical address.
  /// [latitude] Latitude.
  /// [longitude] Longitude.
  DeviceLocation({this.address, this.latitude, this.longitude});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'latitude': ?latitude,
      'longitude': ?longitude,
    };
  }

  factory DeviceLocation.fromMap(Map<String, dynamic> map) {
    return DeviceLocation(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      latitude: (() {
        final guardedValue = map['latitude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      longitude: (() {
        final guardedValue = map['longitude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
