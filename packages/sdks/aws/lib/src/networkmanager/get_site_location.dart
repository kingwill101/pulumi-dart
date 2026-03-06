// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSiteLocation {
  /// Address of the location.
  final pulumi.Input<String> address;
  /// Latitude of the location.
  final pulumi.Input<String> latitude;
  /// Longitude of the location.
  final pulumi.Input<String> longitude;

  /// Creates a new [GetSiteLocation].
  /// [address] Address of the location.
  /// [latitude] Latitude of the location.
  /// [longitude] Longitude of the location.
  const GetSiteLocation({
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
      address: pulumi.Input.fromValue(map['address'] as String),
      latitude: pulumi.Input.fromValue(map['latitude'] as String),
      longitude: pulumi.Input.fromValue(map['longitude'] as String),
    );
  }
}

