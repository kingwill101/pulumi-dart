// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Coordinates
class CoordinatesResponse {
  /// &lt;p&gt; Specifies a coordinate of the north–south position of a geographic point on the surface of the Earth (-90 - 90). &lt;/p&gt;
  final pulumi.Input<String>? latitude;
  /// &lt;p&gt; Specifies a coordinate of the east–west position of a geographic point on the surface of the Earth (-180 - 180). &lt;/p&gt;
  final pulumi.Input<String>? longitude;

  /// Creates a new [CoordinatesResponse].
  /// [latitude] &lt;p&gt; Specifies a coordinate of the north–south position of a geographic point on the surface of the Earth (-90 - 90). &lt;/p&gt;
  /// [longitude] &lt;p&gt; Specifies a coordinate of the east–west position of a geographic point on the surface of the Earth (-180 - 180). &lt;/p&gt;
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
      latitude: (() { final guardedValue = map['latitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longitude: (() { final guardedValue = map['longitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

