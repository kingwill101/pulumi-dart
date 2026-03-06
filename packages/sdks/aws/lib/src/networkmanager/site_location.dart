// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteLocation {
  /// Address of the location.
  final pulumi.Input<String>? address;
  /// Latitude of the location.
  final pulumi.Input<String>? latitude;
  /// Longitude of the location.
  final pulumi.Input<String>? longitude;

  /// Creates a new [SiteLocation].
  /// [address] Address of the location.
  /// [latitude] Latitude of the location.
  /// [longitude] Longitude of the location.
  const SiteLocation({
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

  factory SiteLocation.fromMap(Map<String, dynamic> map) {
    return SiteLocation(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latitude: (() { final guardedValue = map['latitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longitude: (() { final guardedValue = map['longitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

