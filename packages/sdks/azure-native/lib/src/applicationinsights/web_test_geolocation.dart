// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Geo-physical location to run a WebTest from. You must specify one or more locations for the test to run from.
class WebTestGeolocation {
  /// Location ID for the WebTest to run from.
  final pulumi.Input<String>? location;

  /// Creates a new [WebTestGeolocation].
  /// [location] Location ID for the WebTest to run from.
  WebTestGeolocation({
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
    };
  }

  factory WebTestGeolocation.fromMap(Map<String, dynamic> map) {
    return WebTestGeolocation(
      location: map['location'] == null ? null : (map['location'] as String).input(),
    );
  }
}

