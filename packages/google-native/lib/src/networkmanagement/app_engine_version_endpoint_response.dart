// ignore_for_file: unused_element, unnecessary_cast

/// Wrapper for the App Engine service version attributes.
class AppEngineVersionEndpointResponse {
  /// An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  final String uri;

  /// Creates a new [AppEngineVersionEndpointResponse].
  /// [uri] An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.
  AppEngineVersionEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory AppEngineVersionEndpointResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineVersionEndpointResponse(
      uri: map['uri'] as String,
    );
  }
}
