// ignore_for_file: unused_element, unnecessary_cast


/// Geo-physical location to run a WebTest from. You must specify one or more locations for the test to run from.
class WebTestGeolocationResponse {
  /// Location ID for the WebTest to run from.
  final String? location;

  /// Creates a new [WebTestGeolocationResponse].
  /// [location] Location ID for the WebTest to run from.
  WebTestGeolocationResponse({
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
    };
  }

  factory WebTestGeolocationResponse.fromMap(Map<String, dynamic> map) {
    return WebTestGeolocationResponse(
      location: map['location'] == null ? null : map['location'] as String,
    );
  }
}

