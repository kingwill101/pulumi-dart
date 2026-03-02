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
  SiteLocation({
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
      address: map['address'] == null ? null : (map['address'] as String).input(),
      latitude: map['latitude'] == null ? null : (map['latitude'] as String).input(),
      longitude: map['longitude'] == null ? null : (map['longitude'] as String).input(),
    );
  }
}

