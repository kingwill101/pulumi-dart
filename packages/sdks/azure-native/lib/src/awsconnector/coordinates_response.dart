// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Coordinates
class CoordinatesResponse {
  /// <p> Specifies a coordinate of the north–south position of a geographic point on the surface of the Earth (-90 - 90). </p>
  final pulumi.Input<String>? latitude;
  /// <p> Specifies a coordinate of the east–west position of a geographic point on the surface of the Earth (-180 - 180). </p>
  final pulumi.Input<String>? longitude;

  /// Creates a new [CoordinatesResponse].
  /// [latitude] <p> Specifies a coordinate of the north–south position of a geographic point on the surface of the Earth (-90 - 90). </p>
  /// [longitude] <p> Specifies a coordinate of the east–west position of a geographic point on the surface of the Earth (-180 - 180). </p>
  CoordinatesResponse({
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': ?latitude,
      'longitude': ?longitude,
    };
  }

  factory CoordinatesResponse.fromMap(Map<String, dynamic> map) {
    return CoordinatesResponse(
      latitude: map['latitude'] == null ? null : (map['latitude'] as String).input(),
      longitude: map['longitude'] == null ? null : (map['longitude'] as String).input(),
    );
  }
}

