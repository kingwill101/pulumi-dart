// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Geo-physical location to run a WebTest from. You must specify one or more locations for the test to run from.
class WebTestGeolocationResponse {
  /// Location ID for the WebTest to run from.
  final pulumi.Input<String?>? location;

  /// Creates a new [WebTestGeolocationResponse].
  /// [location] Location ID for the WebTest to run from.
  const WebTestGeolocationResponse({
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
    };
  }

  factory WebTestGeolocationResponse.fromMap(Map<String, dynamic> map) {
    return WebTestGeolocationResponse(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
